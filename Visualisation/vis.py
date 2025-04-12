# -*- coding: utf-8 -*-
import serial
import serial.tools.list_ports
import pyqtgraph as pg
from pyqtgraph.Qt import QtCore, QtWidgets, QtGui
import sys
import time
import math
from collections import deque
from PyQt5.QtWidgets import QPushButton, QSpacerItem, QSizePolicy, QLabel, QTextEdit, QSplitter, QGridLayout, QWidget, QVBoxLayout


def select_serial_port():
    ports = list(serial.tools.list_ports.comports())
    for i, port in enumerate(ports):
        print(f"{i}: {port.device} - {port.description}")
    if not ports:
        print("No COM ports found.")
        sys.exit(1)
    idx = int(input("Select COM port: "))
    baudrate = int(input("Enter baudrate: "))
    return ports[idx].device, baudrate


class SerialPlotter(QtWidgets.QMainWindow):
    def __init__(self, port, baudrate):
        super().__init__()
        self.setWindowTitle("Serial Plotter")
        self.resize(1300, 800)

        self.port = port
        self.baudrate = baudrate
        self.ser = None
        self.connected = False
        self.buffer = bytearray()

        self.start_time = time.time()
        self.last_data_time = time.time()
        self.sample_count = 0

        self.max_time = 10
        self.sample_rate = 500
        self.max_points = int(self.max_time * self.sample_rate)

        self.data1 = deque(maxlen=self.max_points)
        self.data2 = deque(maxlen=self.max_points)
        self.timestamps = deque(maxlen=self.max_points)

        self.extended_type_messages = {
            0x01: "Booting after power on",
            0x02: "Booting after reset command",
            0x03: "Booting after UPDI reset",
            0x04: "Booting after watchdog crash",
            0x05: "Booting from an unknown reset state",
            0x06: "Transmission error: ack not received",
            0x07: "Transmission error: no response from local transmitter after 10s",
            0x08: "Transmission error: message length set over 32 bytes",
            0x09: "Transmission error: message length set less than 1 byte",
            0x0a: "Controller state: Idle",
            0x0b: "Controller state: ReceptionWait",
            0x0c: "Controller state: ReceptionReady",
            0x0d: "Controller state: TransmissionStart",
            0x0e: "Controller state: TransmissionWait",
            0x0f: "Controller state: TransmissionConfirm",
            0x10: "Controller state: UnknownState"
        }

        self.init_ui()
        self.try_connect()

        self.timer = QtCore.QTimer()
        self.timer.timeout.connect(self.update)
        self.timer.start(10)

        self.reconnect_timer = QtCore.QTimer()
        self.reconnect_timer.timeout.connect(self.try_connect)
        self.reconnect_timer.start(2000)

    def init_ui(self):
        splitter = QSplitter(QtCore.Qt.Horizontal)
        splitter.setHandleWidth(10)
        self.setCentralWidget(splitter)

        left_panel = QWidget()
        left_layout = QVBoxLayout()
        left_panel.setLayout(left_layout)
        left_panel.setMinimumWidth(160)

        self.conn_label = QLabel("Connection: Checking...")
        self.rx_label = QLabel("Receiving: No")
        self.count_label = QLabel("Samples: 0")
        self.electrode_label = QLabel("Electrode Placement: --")
        self.battery_label = QLabel("Battery: --")
        self.freq_label = QLabel("Freq: -- Hz")

        for lbl in [self.conn_label, self.rx_label, self.count_label,
                    self.electrode_label, self.battery_label, self.freq_label]:
            lbl.setStyleSheet("font-size: 14px; padding: 4px;")
            left_layout.addWidget(lbl)

        self.log_box = QTextEdit()
        self.log_box.setReadOnly(True)
        self.log_box.setStyleSheet("font-size: 11px;")
        left_layout.addWidget(self.log_box, 1)

        btn_grid = QGridLayout()
        buttons = [
            ("Reset", self.send_reset_command),
            ("Check Battery", self.send_check_battery),
            ("Check Electrodes", self.send_check_electrodes),
            ("Stop Measurement", self.send_stop_command),
            ("Resume Measurement", self.send_resume_command),
            ("Status", self.send_status_command)
        ]

        for index, (text, handler) in enumerate(buttons):
            btn = QPushButton(text)
            btn.setStyleSheet("font-size: 13px; padding: 6px;")
            btn.clicked.connect(handler)
            row = index // 2
            col = index % 2
            btn_grid.addWidget(btn, row, col)

        left_layout.addLayout(btn_grid)

        splitter.addWidget(left_panel)

        self.plot_area = pg.GraphicsLayoutWidget()
        layout = self.plot_area.ci.layout

        self.plot1 = self.plot_area.addPlot(row=0, col=0)
        self.add_plot_title(self.plot1, "Raw Signals")
        self.plot1.showGrid(x=True, y=True)
        self.plot1.setLabel('left', 'Values')
        self.plot1.getAxis('bottom').setLabel("")
        self.curve1 = self.plot1.plot(pen='y')
        self.curve2 = self.plot1.plot(pen='c')
        # self.plot1.enableAutoRange(axis='y')
        # self.plot1.setAutoVisible(y=True)
        self.plot1.setMouseEnabled(y=True)
        self.plot1.setMenuEnabled(True)
        self.plot1.getViewBox().setAutoVisible(y=False)

        self.plot2 = self.plot_area.addPlot(row=1, col=0)
        self.add_plot_title(self.plot2, "Difference (Value1 - Value2)")
        self.plot2.showGrid(x=True, y=True)
        self.plot2.setLabel('left', 'Diff')
        self.plot2.getAxis('bottom').setLabel("")
        self.curve_diff = self.plot2.plot(pen=pg.mkPen((150, 150, 150), width=1))
        # self.plot2.enableAutoRange(axis='y')
        self.plot2.setMouseEnabled(y=True)
        self.plot2.setMenuEnabled(True)
        self.plot2.getViewBox().setAutoVisible(y=False)

        self.plot3 = self.plot_area.addPlot(row=2, col=0)
        self.add_plot_title(self.plot3, "RMS Envelope")
        self.plot3.showGrid(x=True, y=True)
        self.plot3.setLabel('left', 'RMS')
        self.plot3.setLabel('bottom', 'Time (s)')
        self.curve_env = self.plot3.plot(pen=pg.mkPen('w', width=3))
        # self.plot3.enableAutoRange(axis='y')
        self.plot3.setMouseEnabled(y=True)
        self.plot3.setMenuEnabled(True)
        self.plot3.getViewBox().setAutoVisible(y=False)

        layout.setRowStretchFactor(0, 1)
        layout.setRowStretchFactor(1, 1)
        layout.setRowStretchFactor(2, 8)

        splitter.addWidget(self.plot_area)
        splitter.setStretchFactor(1, 1)

    def add_plot_title(self, plot, text):
        label = pg.TextItem(text, anchor=(0, 1), color=(180, 180, 180, 130))
        label.setFont(QtGui.QFont("Arial", 12))
        plot.addItem(label)
        label.setPos(0, plot.getAxis('left').range[1] * 0.95)

    def try_connect(self):
        if self.connected:
            return
        try:
            self.ser = serial.Serial(self.port, self.baudrate, timeout=0.01)
            self.connected = True
            self.conn_label.setText("Connection: Connected")
            print("Reconnected.")
        except:
            self.connected = False
            self.conn_label.setText("Connection: Disconnected")

    def send_reset_command(self):
        if self.connected and self.ser:
            try:
                self.ser.write(b'R')
            except Exception as e:
                print(f"Failed to send reset: {e}")

    def send_check_battery(self):
        if self.connected and self.ser:
            try:
                self.ser.write(bytes([0x54, 0x01, 0x01]))
            except Exception as e:
                print(f"Failed to send battery check: {e}")

    def send_check_electrodes(self):
        if self.connected and self.ser:
            try:
                self.ser.write(bytes([0x54, 0x01, 0x03]))
            except Exception as e:
                print(f"Failed to send check electrodes command: {e}")

    def send_stop_command(self):
        if self.connected and self.ser:
            self.ser.write(bytes([0x54, 0x02, 0x06, 0x00]))

    def send_resume_command(self):
        if self.connected and self.ser:
            self.ser.write(bytes([0x54, 0x02, 0x06, 0x01]))

    def send_status_command(self):
        if self.connected and self.ser:
            try:
                self.ser.write(b'S')
            except Exception as e:
                print(f"Failed to send status request: {e}")

    def rms_moving_window(self, data, window_size=20):
        if len(data) < window_size:
            return []
        return [math.sqrt(sum(data[i - window_size:i]) / window_size) for i in range(window_size, len(data) + 1)]

    def parse_buffer(self):
        # Electrode state packet handler: 0x03 + 0x00 (off) or 0x01 (on)
        i = 0
        while i < len(self.buffer):
            if self.buffer[i] == 0x00 and i + 4 < len(self.buffer):
                v1 = (self.buffer[i+1] << 8) | self.buffer[i+2]
                v2_raw = (self.buffer[i+3] << 8) | self.buffer[i+4]
                v2 = v2_raw if v2_raw >= 50 else (self.data2[-1] if self.data2 else 0)
                t = time.time() - self.start_time
                self.data1.append(v1)
                self.data2.append(v2)
                self.timestamps.append(t)
                self.sample_count += 1
                self.update_frequency()
                i += 5
            elif self.buffer[i] == 0xff and i + 1 < len(self.buffer):
                ext_type = self.buffer[i+1]
                msg = self.extended_type_messages.get(ext_type, f"Unknown extended type: {ext_type:02x}")
                if ext_type == 0x07 and i + 2 < len(self.buffer):
                    msg += f" | Data byte: {self.buffer[i+2]:02x}"
                    i += 3
                else:
                    i += 2
                timestamp = time.strftime('%H:%M:%S')
                self.log_box.append(f"[{timestamp}] {msg}")
                self.log_box.verticalScrollBar().setValue(self.log_box.verticalScrollBar().maximum())
            elif self.buffer[i] == 0x03 and i + 1 < len(self.buffer):
                state = self.buffer[i + 1]
                state_text = "Attached" if state == 0x01 else "Not Attached"
                self.electrode_label.setText(f"Electrode Placement: {state_text}")
                i += 2
            else:
                i += 1
        self.buffer = bytearray()

    def update_frequency(self):
        if len(self.timestamps) >= 2:
            duration = self.timestamps[-1] - self.timestamps[0]
            if duration > 0:
                freq = len(self.timestamps) / duration
                self.freq_label.setText(f"Freq: {freq:.1f} Hz")

    def update(self):
        if not self.connected:
            self.rx_label.setText("Receiving: No")
            return

        try:
            if self.ser.in_waiting:
                self.buffer += self.ser.read(self.ser.in_waiting)
                self.last_data_time = time.time()
                self.rx_label.setText("Receiving: Yes")

            self.parse_buffer()

            if time.time() - self.last_data_time > 0.1:
                self.rx_label.setText("Receiving: No")

            self.count_label.setText(f"Samples: {self.sample_count}")

            if len(self.timestamps) >= 2:
                ts = list(self.timestamps)
                d1 = list(self.data1)
                d2 = list(self.data2)

                self.curve1.setData(ts, d1)
                self.curve2.setData(ts, d2)

                diff = [a - b for a, b in zip(d1, d2)]
                self.curve_diff.setData(ts, diff)

                squared = [x**2 for x in diff]
                rms_values = self.rms_moving_window(squared, window_size=20)
                self.curve_env.setData(ts[-len(rms_values):], rms_values)

                t_start = max(0, ts[-1] - self.max_time)
                t_end = ts[-1]
                self.plot1.setXRange(t_start, t_end)
                self.plot2.setXRange(t_start, t_end)
                self.plot3.setXRange(t_start, t_end)

        except Exception as e:
            print(f"Serial error: {e}")
            self.connected = False
            self.conn_label.setText("Connection: Disconnected")
            self.rx_label.setText("Receiving: No")
            try:
                self.ser.close()
            except:
                pass


if __name__ == "__main__":
    port, baudrate = select_serial_port()
    app = QtWidgets.QApplication(sys.argv)
    window = SerialPlotter(port, baudrate)
    window.show()
    sys.exit(app.exec_())

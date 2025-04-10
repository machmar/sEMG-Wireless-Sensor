# -*- coding: utf-8 -*-
import serial
import serial.tools.list_ports
import pyqtgraph as pg
from pyqtgraph.Qt import QtCore, QtWidgets
import sys
import time
from collections import deque

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

def read_packet(ser):
    try:
        start = ser.read(1)
        if start != b'\x00':
            return None, None
        data = ser.read(4)
        end = ser.read(1)
        if len(data) < 4 or end != b'\x0A':
            return None, None
        value1 = (data[0] << 8) | data[1]
        value2 = (data[2] << 8) | data[3]
        return value1, value2
    except:
        return None, None

class SerialPlotter(QtWidgets.QMainWindow):
    def __init__(self, port, baudrate):
        super().__init__()
        self.setWindowTitle("Serial Plotter")
        self.resize(1300, 800)

        self.port = port
        self.baudrate = baudrate
        self.ser = None
        self.connected = False

        self.start_time = time.time()
        self.last_data_time = time.time()
        self.sample_count = 0

        self.max_time = 10  # seconds
        self.sample_rate = 200  # Hz
        self.max_points = self.max_time * self.sample_rate

        self.data1 = deque(maxlen=self.max_points)
        self.data2 = deque(maxlen=self.max_points)
        self.timestamps = deque(maxlen=self.max_points)

        self.init_ui()         # UI first
        self.try_connect()     # then try connecting

        # Plot update timer
        self.timer = QtCore.QTimer()
        self.timer.timeout.connect(self.update)
        self.timer.start(10)

        # Auto-reconnect timer
        self.reconnect_timer = QtCore.QTimer()
        self.reconnect_timer.timeout.connect(self.try_connect)
        self.reconnect_timer.start(2000)

    def init_ui(self):
        main_widget = QtWidgets.QWidget()
        main_layout = QtWidgets.QHBoxLayout()
        main_widget.setLayout(main_layout)
        self.setCentralWidget(main_widget)

        # Status panel
        self.status_panel = QtWidgets.QVBoxLayout()
        self.status_panel.setAlignment(QtCore.Qt.AlignTop)

        self.conn_label = QtWidgets.QLabel("Connection: Checking...")
        self.rx_label = QtWidgets.QLabel("Receiving: No")
        self.count_label = QtWidgets.QLabel("Samples: 0")
        self.electrode_label = QtWidgets.QLabel("Electrode Placement: --")
        self.battery_label = QtWidgets.QLabel("Battery: --")

        for lbl in [self.conn_label, self.rx_label, self.count_label,
                    self.electrode_label, self.battery_label]:
            lbl.setStyleSheet("font-size: 14px; padding: 4px;")
            self.status_panel.addWidget(lbl)

        status_container = QtWidgets.QWidget()
        status_container.setLayout(self.status_panel)
        status_container.setFixedWidth(200)

        # Plot area
        self.plot_area = pg.GraphicsLayoutWidget()
        layout = self.plot_area.ci.layout

        self.plot1 = self.plot_area.addPlot(row=0, col=0, title="Raw Signals")
        self.plot1.showGrid(x=True, y=True)
        self.plot1.setLabel('left', 'Values')
        self.plot1.setLabel('bottom', 'Time (s)')
        self.curve1 = self.plot1.plot(pen='y')
        self.curve2 = self.plot1.plot(pen='c')

        self.plot2 = self.plot_area.addPlot(row=1, col=0, title="Difference & Envelope")
        self.plot2.showGrid(x=True, y=True)
        self.plot2.setLabel('left', 'Difference')
        self.plot2.setLabel('bottom', 'Time (s)')

        self.curve_diff = self.plot2.plot()
        self.curve_diff.setPen(pg.mkPen((150, 150, 150), width=1))  # grey, thin

        self.curve_env = self.plot2.plot()
        self.curve_env.setPen(pg.mkPen('w', width=2))  # white, thick

        layout.setRowStretchFactor(0, 1)
        layout.setRowStretchFactor(1, 9)

        main_layout.addWidget(status_container)
        main_layout.addWidget(self.plot_area, stretch=1)

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

    def moving_average(self, data, window_size=20):
        if len(data) < window_size:
            return []
        return [
            sum(data[i - window_size:i]) / window_size
            for i in range(window_size, len(data) + 1)
        ]

    def update(self):
        if not self.connected:
            self.rx_label.setText("Receiving: No")
            return

        got_data = False
        try:
            while self.ser.in_waiting >= 6:
                v1, v2 = read_packet(self.ser)
                if v1 is not None:
                    t = time.time() - self.start_time
                    self.data1.append(v1)
                    self.data2.append(v2)
                    self.timestamps.append(t)
                    self.sample_count += 1
                    got_data = True

            if got_data:
                self.last_data_time = time.time()
                self.rx_label.setText("Receiving: Yes")
            else:
                if time.time() - self.last_data_time > 0.5:
                    self.rx_label.setText("Receiving: No")

            self.count_label.setText(f"Samples: {self.sample_count}")

            if len(self.timestamps) >= 2:
                # Plot raw values
                ts = list(self.timestamps)
                self.curve1.setData(ts, list(self.data1))
                self.curve2.setData(ts, list(self.data2))

                # Plot difference
                diff = [a - b for a, b in zip(self.data1, self.data2)]
                self.curve_diff.setData(ts, diff)

                # Plot envelope
                abs_diff = [abs(x) for x in diff]
                smoothed = self.moving_average(abs_diff, window_size=20)
                self.curve_env.setData(ts[-len(smoothed):], smoothed)

                # Update x-range
                t_start = max(0, ts[-1] - self.max_time)
                t_end = ts[-1]
                self.plot1.setXRange(t_start, t_end)
                self.plot2.setXRange(t_start, t_end)
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

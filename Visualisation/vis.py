import serial
import serial.tools.list_ports
import pyqtgraph as pg
from pyqtgraph.Qt import QtCore, QtWidgets
import sys
import time
from collections import deque

# ----- Serial setup -----
def select_serial_port():
    ports = list(serial.tools.list_ports.comports())
    for i, port in enumerate(ports):
        print(f"{i}: {port.device} - {port.description}")
    idx = int(input("Select COM port: "))
    baudrate = int(input("Enter baudrate: "))
    return ports[idx].device, baudrate

# ----- Parse one packet (6 bytes) -----
def read_packet(ser):
    start = ser.read(1)
    if start != b'\x00':
        return None, None  # Skip invalid start

    data = ser.read(4)
    end = ser.read(1)

    if len(data) < 4 or end != b'\x0A':
        return None, None  # Skip invalid packet

    value1 = (data[0] << 8) | data[1]
    value2 = (data[2] << 8) | data[3]
    return value1, value2

# ----- Main -----
if __name__ == "__main__":
    port, baudrate = select_serial_port()
    ser = serial.Serial(port, baudrate, timeout=0.01)

    app = QtWidgets.QApplication(sys.argv)
    win = pg.GraphicsLayoutWidget(show=True, title="Serial Data Live Plot")
    win.resize(1000, 600)
    win.setWindowTitle('Real-Time Serial Plotter')

    plot = win.addPlot(title="Live Data")
    plot.showGrid(x=True, y=True)
    plot.setLabel('left', 'Value')
    plot.setLabel('bottom', 'Time', 's')

    curve1 = plot.plot(pen='y', name="Value 1")
    curve2 = plot.plot(pen='c', name="Value 2")

    max_time = 20  # seconds
    sample_rate = 200  # Hz, expected incoming rate
    max_points = max_time * sample_rate

    data1 = deque(maxlen=max_points)
    data2 = deque(maxlen=max_points)
    timestamps = deque(maxlen=max_points)

    start_time = time.time()

    def update():
        while ser.in_waiting >= 6:
            v1, v2 = read_packet(ser)
            if v1 is not None:
                t = time.time() - start_time
                data1.append(v1)
                data2.append(v2)
                timestamps.append(t)

        if timestamps:
            curve1.setData(timestamps, data1)
            curve2.setData(timestamps, data2)

            # Keep view window sliding
            plot.setXRange(max(0, timestamps[-1] - max_time), timestamps[-1])

    timer = QtCore.QTimer()
    timer.timeout.connect(update)
    timer.start(5)  # Update every 5 ms

    QtWidgets.QApplication.instance().exec_()

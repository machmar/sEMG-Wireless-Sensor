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
    win.resize(1200, 800)
    win.setWindowTitle('Real-Time Serial Plotter')

    layout = win.ci.layout  # Access the layout

    # --- Create the two plots ---
    # Top small plot
    plot1 = win.addPlot(row=0, col=0, title="Raw Signals")
    plot1.showGrid(x=True, y=True)
    plot1.setLabel('left', 'Values')
    plot1.setLabel('bottom', 'Time', 's')
    curve1 = plot1.plot(pen='y', name="Value 1")
    curve2 = plot1.plot(pen='c', name="Value 2")

    # Bottom big plot
    plot2 = win.addPlot(row=1, col=0, title="Difference (Value 1 - Value 2)")
    plot2.showGrid(x=True, y=True)
    plot2.setLabel('left', 'Difference')
    plot2.setLabel('bottom', 'Time', 's')
    curve_diff = plot2.plot(pen='m', name="Difference")

    # Set the row stretch factors (top 10%, bottom 90%)
    layout.setRowStretchFactor(0, 1)  # Top plot (small)
    layout.setRowStretchFactor(1, 9)  # Bottom plot (large)

    # --- Data buffers ---
    max_time = 20  # seconds
    sample_rate = 200  # Hz
    max_points = max_time * sample_rate

    data1 = deque(maxlen=max_points)
    data2 = deque(maxlen=max_points)
    timestamps = deque(maxlen=max_points)

    start_time = time.time()

    # --- Update function ---
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

            diff = [a - b for a, b in zip(data1, data2)]
            curve_diff.setData(timestamps, diff)

            # Keep view window sliding
            t_start = max(0, timestamps[-1] - max_time)
            t_end = timestamps[-1]
            plot1.setXRange(t_start, t_end)
            plot2.setXRange(t_start, t_end)

    timer = QtCore.QTimer()
    timer.timeout.connect(update)
    timer.start(5)  # Update every 5 ms

    QtWidgets.QApplication.instance().exec_()

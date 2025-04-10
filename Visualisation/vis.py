import serial
import serial.tools.list_ports
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import time
from collections import deque

def list_serial_ports():
    ports = serial.tools.list_ports.comports()
    return [port.device for port in ports]

def read_packet(ser):
    """
    Read exactly one packet: 6 bytes
    Format:
      Byte 0: Start (ignored)
      Byte 1 + Byte 2: value1
      Byte 3 + Byte 4: value2
      Byte 5: End (ignored)
    """
    while True:
        byte = ser.read(1)
        if not byte:
            continue
        if byte[0] == 0x00:
            # Read the rest 5 bytes
            rest = ser.read(5)
            if len(rest) == 5:
                value1 = (rest[0] << 8) | rest[1]
                value2 = (rest[2] << 8) | rest[3]
                return value1, value2
    return None, None

def main():
    # List available COM ports
    ports = list_serial_ports()
    if not ports:
        print("No COM ports found.")
        return
    
    print("Available COM ports:")
    for i, port in enumerate(ports):
        print(f"{i}: {port}")
    
    index = int(input("Select COM port index: "))
    com_port = ports[index]
    baudrate = int(input("Enter baudrate: "))

    # Open serial connection
    ser = serial.Serial(com_port, baudrate, timeout=1)
    print(f"Listening on {com_port} at {baudrate} baud...")

    # Data storage: last 20s worth of data at 200Hz
    max_points = 20 * 200
    data1 = deque(maxlen=max_points)
    data2 = deque(maxlen=max_points)
    timestamps = deque(maxlen=max_points)

    # Setup plot
    fig, ax = plt.subplots()
    line1, = ax.plot([], [], label="Value 1")
    line2, = ax.plot([], [], label="Value 2")

    ax.set_xlabel("Time (s)")
    ax.set_ylabel("Values")
    ax.set_title("Serial Data Real-time Plot")
    ax.set_ylim(0, 4096)  # Example fixed Y range
    ax.set_xlim(0, 20)    # Always show 20 seconds window
    ax.set_autoscale_on(False)  # Fix axis scaling
    ax.legend()
    plt.grid(True)

    start_time = time.time()

    def update(frame):
        nonlocal ser, start_time

        try:
            while ser.in_waiting >= 6:
                value1, value2 = read_packet(ser)
                if value1 is not None:
                    current_time = time.time() - start_time
                    data1.append(value1)
                    data2.append(value2)
                    timestamps.append(current_time)

            if timestamps:
                t0 = max(0, timestamps[-1] - 20)
                ax.set_xlim(t0, t0 + 20)

            line1.set_data(timestamps, data1)
            line2.set_data(timestamps, data2)

        except Exception as e:
            print(f"Error reading serial data: {e}")

        return line1, line2


    ani = animation.FuncAnimation(fig, update, interval=5, blit=True)

    plt.show()

    ser.close()

if __name__ == "__main__":
    main()

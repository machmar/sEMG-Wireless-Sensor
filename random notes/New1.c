CS low
0x27 0x70 // clear interrupts
0x3C 0x3F // dynamic payload on all pipes
0x3D 0x05 // dynamic payload length, disable playload-with-ack, enable no ack
// init kinda done, check if we alive
0x1D 0x00 // should get back 0x05 (if not do activate)
// we is not alive:
0x50 0x73 // command activate
0x3D 0x05 // dynamic payload length, disable payload-with-ack, enable no ack
0x1D 0x00 // should get back 0x05 (if not then idk)
// we is alive, setup stuff
0x20 0x0C // 2byte crc
// set CE low
0xE1 // flush TX
0xE2 // flush RX
0x25 0x02 // set channel 2
0x26 0x0E // 0db, 2Mbps
// init finished

//-----------------------------------------------
BEGIN
CE low
0x23 0x00 // test connection (should get 0 to 3) [7:0]
0x20 0x0C // 16 bit crc [3:2]
0x24 0x55 // 15 retries, delay of 1500 [7:0]
0x3D 0x04 // dynamic payload, payload with ack packets off, dynamic ack off [2:0]
0x3C 0x3F // dynamic payloads on all pipes [5:0]
0x27 0x70 // clear irq status bits [6:4]
0x20 0x70 // disable IRQ [6:4]
0x27 0x70 // clear irq status bits [6:4]
0xE1 // flush TX fifo
0xE2 // flush RX fifo
0x20 0x02 // power up [1:1]

STANDBY
0x27 0b0XX0XXXX // carrier output is disabled
0x20 0bXXXXXX1X // standby1
SET FREQUENCY AND POWER
0x25 0x02 // channel 2
0x26 0bXX0X111X // 1Mbps, 0dBm
SET ADDRESS WIDTH
0x23 0x03 // address width of 5 bytes
CRC IS ALREADY ON
AUTO ACK
0x21 0x3F // auto ack on all pipes

SET PIPE AND ITS ADDR FOR TRANSMIT
go standby
0X30 0x01 0X23 0x45 0x67 0x89 // the only available pipe with the 5 byte address
0x2A 0x01 0X23 0x45 0x67 0x89 // pipe 0 with the 5 byte address for ACK
0x22 0x01 // enable just pipe 0

SET PIPE 0 AND ITS ADDR FOR RECEIVE
go standby
0x2A 0x01 0X23 0x45 0x67 0x89 // pipe 0 with the 5 byte address
0x22 0x01 // enable just pipe 0

TRANSMITTING
go standby
clear interrupts
0x20 0bXX0XXXXX // enable TXDataSent interrupt
0xE1 // flush TX fifo
0xA0 0x01 0x02 0x03 0x04 // fill TX fifo with something
CE high
CE low
after interrupt falls: // if not, check MAX RT in status
clear interrupts
go standby

RECEIVING
go standby
clear interrupts
0x20 0bX0XXXXX1 // enable RXDataReady interrupt, primary RX mode
0xE2 // flush RX fifo
CE high
after interrupt falls: // if takes too long, leave (standby, clear interrupt)
CE low
go standby
0x60 0x00 // get the received payload length
0x61 0x00 0x00 0x00 0x00 // read the received data
clear interrupts


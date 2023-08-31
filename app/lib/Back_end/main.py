import serial.tools.list_ports
import serial
from time import gmtime, strftime
#from Back_CMD import Command

ports = serial.tools.list_ports.comports()
serialInst = serial.Serial()

PortsList = []

Log = open('G:\SHEHRM\App\Log.log', 'w')

GetTime = strftime("%a, %d %b %Y %H:%M:%S :", gmtime())
print ("%s\n%s" % (GetTime[17:] , GetTime))

for onePort in ports:
    PortsList.append(str(onePort))
    print(str(onePort))

val = input("Select Port: COM")

for x in range(0,len(PortsList)):
    if PortsList[x].startswith("COM" + str(val)):
        portVar = "COM" + str(val)
        print(portVar)
buadeRate = 1200
serialInst.baudrate = buadeRate
serialInst.port = portVar
serialInst.open()


while True: 
	if serialInst.in_waiting:
                  
		packet = serialInst.readline()
		GetData = print("%s"%(GetTime[17:]),packet.decode('ascii').rstrip('\r\n'))  
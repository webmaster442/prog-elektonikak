#------------------------------------------------------------------------------
# Functions module
# Various functions
#------------------------------------------------------------------------------
import subprocess
import serial

#------------------------------------------------------------------------------
# Bluetooth stack
#------------------------------------------------------------------------------

#Run a System command and return its output lines as tuple
def RunCommand(command):
	p = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
	return p.communicate()

#Run a Command in a Pipe
def RunCommandPipe(command1, command2):
	p1 = subprocess.Popen(command1, stdout=subprocess.PIPE)
	p2 = subprocess.Popen(command2, stdin=p1.stdout, stdout=subprocess.PIPE)
	p1.stdout.close()
	return p2.communicate()

#List Bluetooth Devices
def BTList():
	res = RunCommand(['sudo', 'hcitool', 'scan'])
	lines = res[0].split("\n")
	ret = {}
	for line in lines:
		data = line.strip().split('\t')
		if len(data) > 1:
			ret[data[1]] = data[0]
	return ret

#Pair Device
def PairDevice(device, adress):
	basen = 1234
	code = 1234
	if device.startswith("LAMP"):
		index = int(device.replace("LAMP", ""));
		code = basen + index *  1111
	elif device.startswith("SENSOR"):
		index = int(device.replace("SENSOR", ""));
		code = basen + index *  1010
	return RunCommandPipe(['echo', str(code)],  ['sudo', 'bluez-simple-agent', 'hci0', adress])

def GetPortFromDevice(device):
	if device.startswith("LAMP"):
		index = int(device.replace("LAMP", ""));
		code = index + 10
	elif device.startswith("SENSOR"):
		index = int(device.replace("SENSOR", ""));
		code = index + 20;
	return "/dev/rfcomm"+str(code)

#Connect to serial device
def BTConnect(device, adress):
	devfile = GetPortFromDevice(device)
	RunCommand(['sudo', 'rfcomm', 'bind', devfile, adress])

#Disconnect from serial device
def BTDisconnect(device, adress):
	devfile = GetPortFromDevice(device)
	RunCommand(['sudo', 'rfcomm', 'unbind', devfile, adress])

#------------------------------------------------------------------------------
# Serial stack
#------------------------------------------------------------------------------
def SendLampData(device,pwmvalue):
	try:
		port = serial.Serial(GetPortFromDevice(device), baudrate=115200, timeout=4)
		port.write(str(pwmvalue)+"\n")
		val = port.readline()
		port.close()
	except:
		pass

def ReadSensor(device):
	try:
		port = serial.Serial(GetPortFromDevice(device), baudrate=115200, timeout=4)
		port.write("L\n")
		val = port.readline()
		port.close()
	except:
		return -1
	return int(val)
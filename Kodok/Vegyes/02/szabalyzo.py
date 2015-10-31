#Main control thread 
import functions
import threading
import thread
import time

class Controller(threading.Thread):
	def __init__(self, devices, tree, debug):
		self.devices = devices
		self.devtree = tree
		self.debug = debug
		threading.Thread.__init__(self)

	def run(self):
		while 1:
			for i in self.devtree.keys():
				if (self.debug):
					print "Parositas: ", i, self.devices[i]
				functions.PairDevice(i, self.devices[i])
				if (self.debug):
					print "Csatlakozas: ", i, self.devices[i]
				functions.BTConnect(i, self.devices[i])
				time.sleep(0.2)
				sensorval = functions.ReadSensor(i)
				if (self.debug):
					print "Szenzor ertek: ", sensorval
				time.sleep(0.1)
				functions.BTDisconnect(i, self.devices[i])
				time.sleep(0.2)
				for j in self.devtree[i]:
					if (self.debug):
						print "Parositas: ", j, self.devices[j]
					functions.PairDevice(j, self.devices[j])
					if (self.debug):
						print "Csatlakozas: ", j, self.devices[j]
					functions.BTConnect(j, self.devices[j])
					time.sleep(0.2)
					if (self.debug):
						print "adat kuldese: ", j, sensorval
					functions.SendLampData(j, sensorval)
					time.sleep(0.1)
					functions.BTDisconnect(j, self.devices[j])
					time.sleep(0.2)
		time.sleep(0.5)
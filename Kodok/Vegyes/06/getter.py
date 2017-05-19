#!/usr/bin/env python

import serial
from time import *

ser = serial.Serial('/dev/ttyACM0', 9600, timeout=4)

sleep(4)

ser.write(str(" "))
data = ser.readline()
print(data)  

import RPi.GPIO as GPIO
import time

print "Python Pelda"
print "LED felkapcsolasa es lekapcsolasa 100x"

GPIO.setmode(GPIO.BCM)
GPIO.setup(11, GPIO.OUT)

for i in range(0, 100):
	GPIO.output(11, GPIO.HIGH)
	time.sleep(0.250)
	GPIO.output(11, GPIO.LOW)
	time.sleep(0.250)
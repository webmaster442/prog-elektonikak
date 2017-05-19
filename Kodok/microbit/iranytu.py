from microbit import *

compass.calibrate()

while True:
    sleep(100)
	irany = compass.heading()
	print(irany)
	#a // operátor kombinálja az osztást és a legkisebb egészre kerekítést.
	#pl: 5 // 2 = 2, míg 5 / 2 = 2.5 
    mutato = ((15 - irany) // 30) % 12
    display.show(Image.ALL_CLOCKS[mutato])

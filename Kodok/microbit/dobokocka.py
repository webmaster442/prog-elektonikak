from microbit import *
import random

i1 = Image("00000:"
           "00000:"
           "00900:"
           "00000:"
           "00000")

i2 = Image("00009:"
           "00000:"
           "00000:"
           "00000:"
           "90000")

i3 = Image("00009:"
           "00000:"
           "00900:"
           "00000:"
           "90000")

i4 = Image("90009:"
           "00000:"
           "00000:"
           "00000:"
           "90009")

i5 = Image("90009:"
           "00000:"
           "00900:"
           "00000:"
           "90009")

i6 = Image("90009:"
           "00000:"
           "90009:"
           "00000:"
           "90009")

kocka = [i1, i2, i3, i4, i5, i6]

while True:
    if accelerometer.was_gesture('shake'):
        szam = random.choice(kocka)
        display.show(Image.ALL_CLOCKS, loop=False, delay=20)
        display.clear()
        display.show(szam)
    sleep(5)

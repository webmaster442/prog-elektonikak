from microbit import *

while True:
    sleep(100)
    gesture = accelerometer.current_gesture()
    print(gesture)
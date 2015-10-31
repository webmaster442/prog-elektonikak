import pyfirmata
import time

brd = Arduino('/dev/tty.usbserial-A6008rIF')

it = util.Iterator(board)
it.start()

allapot = brd.digital[12].read()
println "A 12. lab allapota:", allapot

println "13. lab valtoztatasa"
for i in range(0, 10):
	brd.digital[13].write(1)
	time.sleep(1)
	brd.digital[13].write(0)
	time.sleep(1)

board.analog[0].enable_reporting()
analog = board.analog[0].read()
println "A0 erteke:", analog

println "2,5V PWM jel a 6-os labon"
board.pwm[6].write(0.5)
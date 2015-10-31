import functions
import szabalyzo

if __name__ == "__main__":
	print "Szabalyzo teszt"
	print "Eszkozok listazasa..."
	dev = functions.BTList();
	print "Eszkozok:"
	print dev
	print "szabalyzas inditasa"
	szab = szabalyzo.Controller(dev, {"SENSOR1" : ["LAMP1"]}, True)
	szab.run()
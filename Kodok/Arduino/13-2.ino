#include <Firmata.h>

void WriteCallback(byte pin, int value)
{
	pinMode(pin, OUTPUT);
	digitalWrite(pin, value);
}

void setup()
{
	Firmata.setFirmwareVersion(0, 1);
	Firmata.attach(DIGITAL_MESSAGE, WriteCallback);
	Firmata.begin();
}

void loop()
{
	while(Firmata.available()) Firmata.processInput();
}
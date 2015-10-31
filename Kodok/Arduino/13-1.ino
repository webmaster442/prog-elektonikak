#include <Firmata.h>

void setup()
{
	Firmata.setFirmwareVersion(0, 1);
	Firmata.begin();
}

void loop()
{
	while(Firmata.available()) Firmata.processInput();

	Firmata.sendDigitalPortPair(13, 0);
	delay(1000);
	Firmata.sendDigitalPortPair(13, 1);
	delay(1000);
}
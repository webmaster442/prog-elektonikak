#include <SPI.h>
#define CS 2

void setup()
{
	pinMode(CS, OUTPUT);
	digitalWrite(CS, HIGH);
	SPI.begin();
	SPI.setDataMode(SPI_MODE0);
	SPI.setBitOrder(LSBFIRST);
}

void WritePot(byte potadress, byte value)
{
	digitalWrite(CS, LOW);
	if (potadress == 0)
	{
		SPI.transfer(value);
		SPI.transfer(0x00);
	}
	else
	{
		SPI.transfer(value);
		SPI.transfer(0x10);
	}
	digitalWrite(CS, HIGH);
}

void loop()
{
	int i=0;
	for (i=0; i<256; i++)
	{
		WritePot(0, i);
		delay(500);
	}
	for (i=0; i<256; i++)
	{
		WritePot(1, i);
		delay(500);
	}
}
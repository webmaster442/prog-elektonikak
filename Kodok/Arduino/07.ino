#include <Wire.h>
#include <mcp2317.h>

mcp2317 bovito;

void setup()
{
	bovito.Begin(0x20); //elsõ eszközcím
	bovito.pinMode(0, OUTPUT);
}

void loop()
{
	bovito.digitalWrite(0, HIGH);
	delay(100);
	bovito.digitalWrite(0, LOW);
	delay(100);
}
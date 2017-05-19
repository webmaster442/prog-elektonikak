#include <morse.h>

void setup()
{
	Morse.Init(13, 200);
}

void loop()
{
	//hello
	Morse.Signal("......-...-..---");
	delay(1500);
	Morse.SOS();
}
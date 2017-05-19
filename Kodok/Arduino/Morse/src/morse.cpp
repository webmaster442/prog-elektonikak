#include "morse.h"
#include "arduino.h"

void MorseClass::Init(int pin, int delay) {
	_pin = pin;
	_delay = delay;
	pinMode(_pin, OUTPUT);
	digitalWrite(_pin, LOW);
}

void MorseClass::Signal(const char *series) {
	unsigned int len=strlen(series);
	for (unsigned int i=0; i<len; i++) {
		switch (series[i]) {
			case '-':
				digitalWrite(_pin, HIGH);
				delay(_delay*3);
				digitalWrite(_pin, LOW);
				break;
			case '.':
				digitalWrite(_pin, HIGH);
				delay(_delay);
				digitalWrite(_pin, LOW);
				break;
			case ' ':
				digitalWrite(_pin, LOW);
				delay(_delay*7);
				break;
		}
		delay(_delay);
	}
}

void MorseClass::SOS() {
	Signal("...---...");
}

//példányosítás
MorseClass Morse;
#ifndef MORSE_H
#define MORSE_H

#include "Arduino.h"

class MorseClass
{
	private:
		int _pin;
		int _delay;
	public:
		void Init(int pin, int delay);
		void Signal(const char *series);
		void SOS();
};

//hivatkozás a létrejövő példányra
extern MorseClass Morse;

#endif
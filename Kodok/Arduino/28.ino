const long scaleConst = 1156.300 * 1000;
int readVccMv()
{
	// Read 1.1V reference against Avcc
	#if defined(__AVR_ATmega32U4__) || defined(__AVR_ATmega1280__) || › defined(__AVR_ATmega2560__)
	ADMUX = _BV(REFS0) | _BV(MUX4) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
	#elif defined (__AVR_ATtiny24__) || defined(__AVR_ATtiny44__) || › defined(__AVR_ATtiny84__)
	ADMUX = _BV(MUX5) | _BV(MUX0);
	#elif defined (__AVR_ATtiny25__) || defined(__AVR_ATtiny45__) || › defined(__AVR_ATtiny85__)
	ADMUX = _BV(MUX3) | _BV(MUX2);
#else
	ADMUX = _BV(REFS0) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
#endif 

	delay(2); // Wait for Vref to settle
	ADCSRA |= _BV(ADSC); // Start conversion
	while (bit_is_set(ADCSRA,ADSC)); // measuring
	uint8_t low  = ADCL; // must read ADCL first - it then locks ADCH 
	uint8_t high = ADCH; // unlocks both
	long result = (high<<8) | low;

	result = scaleConst / result;
	// Calculate Vcc (in mV); 1125300 = 1.1*1023*1000
	return (int)result; // Vcc in millivolts
}




void setup()
{
	Serial.begin(9600);
}

void loop()
{
	double Vcc = readVccMv() / 1000.0;
	int ADCValue = analogRead(0);
	double Voltage = (ADCValue / 1023.0) * Vcc;
	Serial.println(Voltage);
	delay(1000);
}
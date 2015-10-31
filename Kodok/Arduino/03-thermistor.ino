#include <math.h>

//konstansok
const float Rnevleges = 9850;
const float A = 0.001129148;
const float B = 0.000234125;
const float C = 0.0000000876741;
//---------------------------

float Thermistor(int AnalogErtek)
{
	long Resistance;
	float Temp;
	Resistance=((1024 * Rnevleges / AnalogErtek) – Rnevleges);
	Temp = log(Resistance);
	Temp = 1 / (A + (B * Temp) + (C * Temp * Temp * Temp));
	Temp = Temp – 273.15;

	return Temp;
}
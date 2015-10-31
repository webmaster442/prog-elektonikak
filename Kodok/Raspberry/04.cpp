#include <iostream>
#include <wiringPi.h>

using namespace std;

int main ()
{
	cout << "WiringPi pelda" << endl;
	cout << "LED felkapcsolasa es lekapcsolasa 100x" << endl;
	wiringPiSetup () ;

	pinMode (14, OUTPUT);

	for (int i=0; i<100; i++)
	{
		digitalWrite (14, HIGH);
		delay (250);
		digitalWrite (14,  LOW);
		delay (250);
	}
	return 0;
}
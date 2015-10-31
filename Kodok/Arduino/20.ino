#define PINGPIN 7;

long int ping(int pingPin)
{
	pinMode(pingPin, OUTPUT);
	digitalWrite(pingPin, LOW);
	delayMicroseconds(2);
	digitalWrite(pingPin, HIGH);
	delayMicroseconds(5);
	digitalWrite(pingPin, LOW);
	pinMode(pingPin, INPUT);
	return pulseIn(pingPin, HIGH);
}


float centimeter(long int microseconds)
{
	return microseconds / 29.0 / 2.0;
}

void setup()
{
	Serial.begin(9600);
}

void loop()
{
	long int ido = ping(PINGPIN);
	Serial.print("Tavolsag: ");
	Serial.print((int)centimeter(ido));
	Serial.println(" cm");
	delay(100);
}
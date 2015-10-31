void setup()
{
	pinMode(10, INPUT);
	pinMode(13, OUTPUT);
}

int allapot;

void loop()
{
	if (digitalRead(10) == 1)
	{
		allapot = 1;
		while (digitalRead(10) == 1) {}
	}
	else allapot = 0;
	digitalWrite(13, allapot);
}
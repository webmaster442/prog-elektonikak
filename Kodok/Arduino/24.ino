void setup()
{
	pinMode(3, OUTPUT);
}

void PercentToPWM(int percent)
{
	byte val = (percent * 255) / 100;
	analogWrite(3, val);
}

void loop()
{
	int percent = 0;
	int i=0;
	for (i=0; i<20; i++)
	{
		percent += 5;
		PercentToPWM(3, percent);
		delay(1000);
	}

	delay(3000);

	for (i=0; i<20; i++)
	{
		percent -= 5;
		PercentToPWM(3, percent);
		delay(1000);
	}

	delay(3000);
}
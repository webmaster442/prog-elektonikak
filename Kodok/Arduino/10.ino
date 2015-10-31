float aReading = 0;
float aLoad = 0; //kezdeti súly ami a cellán van grammban
float bReading = 0;
float bLoad = 1000; //ismert súly amit ráteszünk grammban
float diffb = 450; //ismert súly ált. létrehozott analóg jelvált.
long time = 0;
int interval = 500;

int Read(int adc)
{
	analogRead(adc);
	delay(10);
	return analogRead(adc);
}

void setup()
{
	Serial.begin(9600);
	aReading = (float)Read(0);
	bReading = aReading + diffb;
}

void loop()
{
	float newReading = Read(0);

	float load = ((bLoad - aLoad)/(bReading - aReading)) * › (newReading - aReading) + aLoad;

	if (millis() > time + interval)
	{
		Serial.print("analog: ");
		Serial.print(newReading,1);
		Serial.print("Suly: ");
		Serial.println(load,1);
		time = millis();
	}
}
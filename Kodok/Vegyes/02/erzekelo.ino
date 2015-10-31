void setup()
{
	Serial.begin(115200);
}

void loop()
{
	while (Serial.available() > 0)
	{
		char c = (char)Serial.read();
		if (c == 'L')
		{
			int val = analogRead(0);
			Serial.println(val);
			Serial.flush();
		}
	}
}
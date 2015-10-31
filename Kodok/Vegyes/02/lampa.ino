#define LAMPA 8

String inString = "";
char rec;
int value = 0;
int pwm = 0;

void setup()
{
	Serial.begin(115200);
	pinMode(LAMPA, OUTPUT);
}
void loop()
{
	while (Serial.available() > 0)
	{
		rec = Serial.read();
		switch (rec)
		{
			case '\n':
			case '\r':
			case '\0':
				inString += rec;
				value = inString.toInt();
				pwm = map(value, 0, 1023, 0, 255);
				analogWrite(LAMPA, pwm);
				inString = "";
				Serial.println("OK");
				break;
			case '0':
			case '1':
			case '2':
			case '3':
			case '4':
			case '5':
			case '6':
			case '7':
			case '8':
			case '9':
				inString += rec;
				if (inString.length() > 5) inString = "";
				break;
		}
	}
}
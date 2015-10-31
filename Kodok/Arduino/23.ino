#define encoder0PinA 3
#define encoder0PinB 4
int val;
int n = LOW;
int k = LOW;

void setup()
{
	pinMode (encoder0PinA,INPUT);
	pinMode (encoder0PinB,INPUT);
	Serial.begin (9600);
}

void loop()
{
	n = digitalRead(encoder0PinA);
	k = digitalRead(encoder0PinB);

	if (n == LOW && k == HIGH)
	{
		val++;
		while (digitalRead(encoder0PinA) != › digitalRead(encoder0PinB)) {}
		Serial.println(val);
	}

	if (n == HIGH && k == LOW)
	{
		val--;
		while (digitalRead(encoder0PinA) != › digitalRead(encoder0PinB)) {}
		Serial.println(val);
	}
}
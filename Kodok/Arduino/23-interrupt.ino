#define pinA 2
#define pinB 3
int iValue = 0;

void encoderClick()
{
	int valA = digitalRead(pinA);
	int valB = digitalRead(pinB);

	if (valA == LOW && valB == HIGH) iValue++;
	else if (valA == HIGH && valB == LOW) iValue--;
}

void setup()
{
	Serial.begin(9600);
	pinMode(pinA, INPUT);
	pinMode(pinB, INPUT);
	attachInterrupt(0, encoderClick, CHANGE);
	attachInterrupt(1, encoderClick, CHANGE);
}

void loop()
{
	Serial.println(iValue);
	delay(100);
}
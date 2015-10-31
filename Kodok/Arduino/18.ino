#define I1 3
#define I2 4
#define I3 5

void setup()
{
	attachInterrupt(0, megszakitas, RISING); //2-es lab
	pinMode(I1, INPUT);
	pinMode(I2, INPUT);
	pinMode(I3, INPUT);
}

void megszakitas()
{
	int state = 0;
	if (digitalRead(I1)) bitSet(state, 0);
	if (digitalRead(I2)) bitSet(state, 1);
	if (digitalRead(I1)) bitSet(state, 2);
	
	switch (state)
	{
		case 0: //nincs megszak�t�s
			return;
		case 1:
			//A bemeneten �rkezett megszak�t�s
			break;
		case 2:
			//B bemeneten �rkezett megszak�t�s
			break;
		case 3:
			//C bemeneten �rkezett megszak�t�s
			break;
		case 4:
			//D bemeneten �rkezett megszak�t�s
			break;
	}
}

void loop()
{
	//ism�tl�d� k�d
}
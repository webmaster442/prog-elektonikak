#define VARAKOZAS 50

int allapot, elozo, gomb;
long ido;

void setup()
{
	pinMode(10, INPUT);
	pinMode(13, OUTPUT);
	allapot = 0;
	elozo = 0;
	gomb = 0;
}

void loop()
{
	allapot == digitalRead(10);
	if (allapot != elozo) ido = millis();
	if ((millis() - ido) > VARAKOZAS) gomb = allapot;
	else gomb = 0;

	digitalWrite(13, gomb);

	elozo = allapot;
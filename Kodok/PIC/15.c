unsigned char BCD7Szegmens(unsigned short num)
{
	switch (num)
	{
		case 0: return 0x3F;
		case 1: return 0x06;
		case 2: return 0x5B;
		case 3: return 0x4F;
		case 4: return 0x66;
		case 5: return 0x6D;
		case 6: return 0x7D;
		case 7: return 0x07;
		case 8: return 0x7F;
		case 9: return 0x6F;
		default: return 0xFF;
	}
}

int szam1, szam2, i;

void GenRandom()
{
	do { szam1 = rand()%7; }
	while (szam1 == 0);
	do { szam2 = rand()%7; }
	while (szam2 == 0);
}

void main()
{
	ANSEL = 1;
	ANSELH = 0;
	C1ON_bit = 0;
	C2ON_bit = 0;
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x03;
	TRISE = 0x00;

	srand(ADC_Read(0));
	szam1 = 0;
	szam2 = 0;

	while (1)
	{
		if (PORTD.B0 == 1)
		{
			while (PORTD.B0 == 1) {}
			GenRandom();
			PORTB = BCD7Szegmens(szam1);
			delay_ms(3000);
		}
		if(PORTD.B1 == 1)
		{
			while (PORTD.B1 == 1) {}
			GenRandom();
			for (i=0; i<5; i++)
			{
				PORTB = BCD7Szegmens(szam1);
				delay_ms(500);
				PORTB = BCD7Szegmens(szam2);
				delay_ms(500);
			}
		}
		for (i=0; i<7; i++)
		{
			PORTB = 1 << i;
			delay_ms(100);
		}
	}
}
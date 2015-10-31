int i;

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

void main()
{
	ANSEL = 0;
	ANSELH = 0;
	C1ON_bit = 0;
	C2ON_bit = 0;
	TRISA = 0;
	TRISB = 0;
	TRISC = 0;
	TRISD = 0;

	PORTC = 0x01;

	while (1)
	{
		for (i=0; i<10; i++)
		{
			PORTD = BCD7Szegmens(i);
			Delay_ms(1000);
		}
	}
}
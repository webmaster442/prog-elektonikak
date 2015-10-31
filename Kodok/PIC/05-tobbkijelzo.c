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
	i = -1;

	while (1)
	{
		++i;
		if (i > 9999) i = 0;

		//ezresek számának meghatározása
		PORTC = 0x08;
		PORTD = BCD7Szegmens(i/1000);
		Delay_ms(5);

		//százasok számának meghatározás
		//pl i=1337 i/100 után i= 13 majd i%10 = 3
		PORTC = 0x04;
		PORTD = BCD7Szegmens((i/100)%10);
		Delay_ms(5);

		//tizesek számának meghatározása
		//pl i=1337 i/10 után i= 133 majd i%10 = 3
		PORTC = 0x02;
		PORTD = BCD7Szegmens((i/10)%10);
		Delay_ms(5);

		//egyesek számának meghatározása
		PORTC = 0x01;
		PORTD = BCD7Szegmens(i%10);
		Delay_ms(5);
	}
}
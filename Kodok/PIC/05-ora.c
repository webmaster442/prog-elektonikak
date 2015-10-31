int perc, masodperc, i, clk;

unsigned short Decode(unsigned short input)
{
	switch(input)
	{
		case 0:
			return 0x3F;
		case 1:
			return 0x06;
		case 2:
			return 0x5B;
		case 3:
			return 0x4F;
		case 4:
			return 0x66;
		case 5:
			return 0x6D;
		case 6:
			return 0x7D;
		case 7:
			return 0x07;
		case 8:
			return 0x7F;
		case 9:
			return 0x6F;
		default:
			return 0x00;
	}
}

void KijelzoUpdate(int mp)	//5ms
{
	perc = mp / 60;
	masodperc = mp - (perc * 60);

	PORTB = Decode(perc/10);	//	perc
	PORTC = 0x01;
	Delay_ms(1);

	PORTB = Decode(perc%10);	//	perc
	PORTC = 0x02;
	Delay_ms(1);

	PORTB = Decode(masodperc/10);
	PORTC = 0x04;
	Delay_ms(1);

	PORTB = Decode(masodperc%10);
	PORTC = 0x08;
	Delay_ms(2);
}

void main()
{
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x00;
	ANSEL = 0x00;
	ANSELH = 0x00;
	C1ON_bit = 0;
	C2ON_bit = 0;
	i = 0;
	clk = 0;
	while(1)
	{
		if (clk > 200)
		{
			++i;
			clk = 0;
		}
		KijelzoUpdate(i);
		++clk;
	}
}
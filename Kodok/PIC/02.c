int i;
char out;

void main()
{
	ANSEL  = 0;
	ANSELH = 0;
	C1ON_bit = 0;
	C2ON_bit = 0;
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x00;

	while (1)
	{
		out = 1;
		for (i=0; i<8; i++)
		{
			PORTB = out;
			out = 1 << i;
			Delay_ms(100);
		}
		out = 0x80;
		for (i=0; i<8; i++)
		{
			PORTB = out;
			out = 0x80 >> i;
			Delay_ms(100);
		}
	}
}
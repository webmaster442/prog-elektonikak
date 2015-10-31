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
		PORTB = 1;
		Delay_ms(1000);
		PORTB = 0
		Delay_ms(1000);
	}
}
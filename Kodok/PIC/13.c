unsigned analog;

void main()
{
	ANSEL = 0x02;
	ANSELH = 0x00;
	TRISA = 0x02;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x00;

	ADC_Init();

	while(1)
	{
		analog = ADC_Read(1);
		PORTB = analog;
		PORTC = analog >> 4;
	}
}
char i;

void main()
{
	ANSEL = 0;
	ANSELH = 0;
	C1ON_bit = 0;
	C2ON_bit = 0;
	TRISB = 0;
	TRISC = 0;
	TRISD = 0;

	for(i = 0; i < 32; i++)
	{
		EEPROM_Write(0x80+i, i);
	}

	Delay_ms(1000);

	for(i = 0; i < 32; i++)
	{
		PORTD = EEPROM_Read(0x80+i);
		Delay_ms(250);
	}
}
#define IDO 100

int i, mode;
static char mode2[] = { 0x81, 0x42, 0x24, 0x18 };
static char mode3[] = { 0x03, 0x0C, 0x30, 0xC0, 0x40, 0x10, 0x04,  › 0x01 };
static char mode4[] = { 0x0F, 0x1E, 0x3C, 0x78, 0xF0 };

void main()
{
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x01;
	TRISA = 0x00;
	ANSEL = 0;
	ANSELH = 0;
	C1ON_bit = 0;
	C2ON_bit = 0;
	mode = 0;
	while (1)
	{
		if (PORTD.B0 == 1)
		{
			while (PORTD.B0 == 1) {}
			++mode;
			if (mode > 4) mode = 0;
		}
		switch (mode)
		{
			case 0:
				PORTB = 0xFF;
				Delay_ms(IDO);
				PORTB = 0x00;
				Delay_ms(IDO);
				break;
			case 1:
				for (i=0; i<4; i++)
				{
					PORTB = mode2[i];
					Delay_ms(IDO);
				}
				for (i=3; i>=0; i--)
				{
					PORTB = mode2[i];
					Delay_ms(IDO);
				}
				break;
			case 2:
				for (i=0; i<8; i++)
				{
					PORTB = mode3[i];
					Delay_ms(IDO);
				}
				for (i=7; i>=0; i--)
				{
					PORTB = mode3[i];
					Delay_ms(IDO);
				}
				break;
			case 3:
				for (i=0; i<5; i++)
				{
					PORTB = mode4[i];
					Delay_ms(IDO);
				}
				for (i=4; i>=0; i--)
				{
					PORTB = mode4[i];
					Delay_ms(IDO);
				}
				break;
			case 4:
				PORTB = 0x0F;
				Delay_ms(IDO);
				PORTB = 0xF0;
				Delay_ms(IDO);
				break;
		}
	}
}
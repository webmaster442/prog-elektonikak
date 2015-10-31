int i = 0;
const char johnsonk[16] = 
					{ 0x00, 0x01, 0x03, 0x07, 
					  0x0F, 0x1F, 0x3F, 0x7F,
					  0xFF, 0x7F, 0x3F, 0x1F,
					  0x0F, 0x07, 0x03, 0x01
					};

#define DELAY 1000

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

	while (1)
	{
		for (i=0; i<=16; i++)
		{
			PORTB = johnsonk[i];
			Delay_ms(DELAY);
		}
	}
}
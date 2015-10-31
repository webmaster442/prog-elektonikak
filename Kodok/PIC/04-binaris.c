int i = 0;
#define LEFELEIS 0
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
		for (i=0; i<256; i++)
		{
			PORTB = i;
			Delay_ms(DELAY);
		}
		if (LEFELEIS)
		{
			for (i=255; i>=0; i--)
			{
				PORTB = i;
				Delay_ms(DELAY);
			}
		}
	}
}
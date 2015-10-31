static char gombok[] = { 'a', 'w', 'd', 'e', 'f', 'g', 'z', 'h', › 'u', 'j', 'i', 'l' };
static unsigned int frekvencia = { 262, 277, 293, 311, 330, 349, › 370, 392, 415, 440, 466, 494 };
unsigned short keydata = 0, special = 0, down = 0;
int i=0, index = 0, hanghossz = 100;

sbit PS2_Data at RC0_bit;
sbit PS2_Clock at RC1_bit;
sbit PS2_Data_Direction at TRISC0_bit;
sbit PS2_Clock_Direction at TRISC1_bit;

short int keres(char gomb)
{
	for (i = 0; i<12; i++)
	{
		if (gombok[i] == gomb) return i;
	}
	return -1;
}

void hanghoszbeallit(char muvelet)
{
	if (muvelet == '+')
	{
		hanghossz += 25;
		Sound_Play(2000, 50);
	}
	else
	{
		hanghossz -= 25;
		Sound_Play(1000, 50);
	}
	if (hanghossz > 2000 || hanghossz < 25)
	{
		hanghossz = 100;
		Sound_Play(440, 50);
		delay_ms(50);
		Sound_Play(440, 50);
	}
}

void main()
{
	ANSEL = 0;
	ANSELH = 0;
	TRISA = 0;
	TRISB = 0;
	TRISC = 0;
	TRISD = 0;
	Ps2_Config();
	Sound_Init(&PORTD, 0);
	
	while (1)
	{
		if (Ps2_Key_Read(&keydata, &special, &down))
		{
			if (down)
			{
				switch (keydata)
				{
					case '0':
						hanghoszbeallit('-');
						break;
					case '1':
						hanghoszbeallit('+');
						break;
					default:
						i = keres(keydata);
						if (i <= 0) break;
						Sound_Play(frekvencia[i], hanghossz);
						break;
				}
			}
		}
	}
}
unsigned short keydata = 0, special = 0, down = 0;

sbit PS2_Data at RC0_bit;
sbit PS2_Clock at RC1_bit;
sbit PS2_Data_Direction  at TRISC0_bit;
sbit PS2_Clock_Direction at TRISC1_bit;

void main()
{
	ANSEL  = 0;
	ANSELH = 0;
	C1ON_bit = 0;
	C2ON_bit = 0;

	UART1_Init(19200);
	Ps2_Config();
	Delay_ms(100);

	UART1_Write_Text("Ready");
	UART1_Write(10);
	UART1_Write(13);
	do
	{
		if (Ps2_Key_Read(&keydata, &special, &down))
		{
			if (down && (keydata == 16)) //backspace
				UART1_Write(0x08);
			else if (down && (keydata == 13)) //enter
				UART1_Write('r');
			else if (down && !special && keydata)
				UART1_Write(keydata);
		}
		Delay_ms(1);
	}
	while (1);
}
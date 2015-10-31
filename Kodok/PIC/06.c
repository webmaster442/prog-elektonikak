unsigned short i;

void main()
{
	UART1_Init(19200);
	Delay_ms(100);

	while (1)
	{
		if (UART1_Data_Ready() > 0)
		{
			i = UART1_Read();
			if (UART1_Tx_Idle()) UART1_Write(i);
		}
	}
}
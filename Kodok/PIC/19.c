int duty, i;

void main()
{
	PORTC = 0;
	PWM1_Init(5000);
	PWM2_Init(5000);
	PWM1_Start();
	PWM2_Start();
	duty = 0;
	PWM1_Set_Duty(duty);
	PWM2_Set_Duty(255-duty);
	while (1)
	{
		for (i=0; i<=255; i++)
		{
			duty = i;
			PWM1_Set_Duty(duty);
			PWM2_Set_Duty(255-duty);
			delay_ms(50);
		}
		for (i=0; i<=255; i++)
		{
			duty = i;
			PWM1_Set_Duty(255-duty);
			PWM2_Set_Duty(duty);
			delay_ms(50);
		}
	}
}
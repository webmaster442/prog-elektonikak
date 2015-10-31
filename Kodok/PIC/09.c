//RW = GND RS = PORTD.B2 E = PORTD.B3 Data PORTD.B4 -> PORTD.F7

//E-n csin�l egy fel �s lefut� �lt.
void E_HiLo()
{
	PORTD.B3 = 1;
	Delay_us(1);
	PORTD.B3 = 0;
}
//LCD Parancs k�ld�s 4 bites �zemm�dban
void MLCD_Cmd(char data)
{
	char felso, also;
	felso = data & 0xF0;
	also = data << 4;
	PORTD = (PORTD & 0x0F) | felso;
	E_HiLo();
	PORTD = (PORTD & 0x0F) | also;
	E_HiLo();

	if (data > 2) Delay_us(40);
	else Delay_ms(2);
}

//Inincializ�lja az LCD k�perny�t.
void MLCD_Init()
{
	PORTD.B2 = 0;
	PORTD.B3 = 0;
	Delay_ms(50);
	PORTD = 0x30;
	E_HiLo();
	Delay_ms(5);
	E_HiLo();
	Delay_us(160);
	E_HiLo();
	Delay_us(160);
	PORTD = 0x20; //4Bites Interf�sz be�ll�t�sa
	E_HiLo();
	Delay_us(160);
	MLCD_Cmd(0x2a); //Function set 4 bit interf�sz
	MLCD_Cmd(0x08);  //Display on/off be�ll�t�s
	MLCD_Cmd(0x01); //clear display
	MLCD_Cmd(0x06); //entry mode set
	MLCD_Cmd(0x0C); //Display on/off
}

void MLCD_Kiir(char data)
{
	PORTD.B2 = 1;
	MLCD_Cmd(data);
	PORTD.B2 = 0;
}
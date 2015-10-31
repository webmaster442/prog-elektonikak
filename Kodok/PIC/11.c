void start1307s();
void ds1307_init();
void ds1307_set_date_time(char day,char mth,char year,char dow, › 
char hr,char min,int sec);
void ds1307_get_time_date(char *day,char *mth,char *year,char ›  *dow,char *hr,char *min,char *sec);
void ds1307_set_controlreg(char out, char sqwe, char rs);

void start1307s()
{
	I2C_Start();	//issue start signal
	I2C_Wr(0xD0);	//address
	I2C_Wr(0);	//start from word at address 0
	I2C_Wr(0);	//write 0 to config word (enable counting)
	I2C_Stop();	//issue stop signal
}

void ds1307_init()
{
	int seconds=0;
	I2C_Start();
	I2C_Wr(0xD0);	//WR -> RTC
	I2C_Wr(0x00);	//REG 0
	I2C_Start();
	I2C_Wr(0xD1);	//RD from RTC
	seconds = Bcd2Dec(I2C_Rd(0));
	I2C_Stop();
	seconds = (seconds & 0x7F); //óra stop
	Delay_ms(50);

	I2C_Start();
	I2C_Wr(0xD0);	//WR to RTC
	I2C_Wr(0x00);	//REG 0
	I2C_Wr(Dec2Bcd(seconds));
	I2C_Start();
	I2C_Wr(0xD0);	//WR to RTC
	I2C_Wr(0x07);	//Control Register
	I2C_Wr(0x80);	//Disable squarewave output pin
	I2C_Stop();
}

void ds1307_set_date_time(char day,char mth,char year,char dow, ›
char hr,char min,int sec)
{
	sec =(sec & 0x7F); //halt kikapcs
	hr =(hr & 0x3F);
	I2C_Start();
	I2C_Wr(0xD0);	//I2C write address
	I2C_Wr(0x00);	//Start at REG 0 – Seconds
	I2C_Wr(Dec2Bcd(sec));	//REG 0
	I2C_Wr(Dec2Bcd(min));	//REG 1
	I2C_Wr(Dec2Bcd(hr));	//REG 2
	I2C_Wr(Dec2Bcd(dow));	//REG 3
	I2C_Wr(Dec2Bcd(day));	//REG 4
	I2C_Wr(Dec2Bcd(mth));	//REG 5
	I2C_Wr(Dec2Bcd(year));	//REG 6
	I2C_Stop();
}

void ds1307_get_time_date(char *day,char *mth,char *year,char ›  *dow, char *hr,char *min,char *sec)
{
	I2C_Start();
	I2C_Wr(0xD0);
	I2C_Wr(0x00);
	I2C_Start();
	I2C_Wr(0xD1);
	*sec=Bcd2Dec(I2C_Rd(1) & 0x7F);
	*min=Bcd2Dec(I2C_Rd(1) & 0x7F);
	*hr=Bcd2Dec(I2C_Rd(1) & 0x3F);
	*dow=Bcd2Dec(I2C_Rd(1) & 0x7F); // REG 3
	*day=Bcd2Dec(I2C_Rd(1) & 0x3F); //REG 4
	*mth=Bcd2Dec(I2C_Rd(1) & 0x1F); //REG 5
	*year=Bcd2Dec(I2C_Rd(0)); //REG 6
	I2C_Stop();
}

void ds1307_set_controlreg(char out, char sqwe, char rs)
{
	char rsw = rs;
	if (rs > 3 || rs < 0) rsw = 0;
	char sqwew = (sqwe & 0x01) * 0x10;
	char outw = (out & 0x01) * 0x80;
	char writereg = outw + sqwew + rsw;
	I2C_Start();
	I2C_Wr(0xD0);	//I2C write address
	I2C_Wr(0x07);	//Start at REG 7
	I2C_Wr(writereg);
	I2C_Stop();
}
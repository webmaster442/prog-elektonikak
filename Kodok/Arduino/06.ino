void writeEEPROM(int device, unsigned int eeaddress, byte data)
{
	Wire.beginTransmission(device);
	Wire.send((int)(eeaddress >> 8));		//MSB
	Wire.send((int)(eeaddress & 0xFF));	//LSB
	Wire.send(data);
	Wire.endTransmission();

	delay(5);
}

byte readEEPROM(int device, unsigned int eeaddress)
{
	byte rdata = 0x00;
	Wire.beginTransmission(device);
	Wire.send((int)(eeaddress >> 8));		//MSB
	Wire.send((int)(eeaddress & 0xFF));	//LSB
	Wire.endTransmission();
	Wire.requestFrom(device,1);

	if (Wire.available()) rdata = Wire.receive();
	return rdata;
}
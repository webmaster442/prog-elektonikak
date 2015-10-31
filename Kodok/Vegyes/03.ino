void setup()
{
	Keyboard.begin();
}

void loop()
{
	delay(1000);
	Keyboard.press(KEY_LEFT_GUI);
	Keyboard.press('r');
	delay(100);
	Keyboard.releaseAll();
	Keyboard.println("iexplore.exe google.com");
	delay(400);
	while(true);
}
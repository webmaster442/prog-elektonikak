#include <Adafruit_GFX.h>
#include <Adafruit_PCD8544.h>

Adafruit_PCD8544 ki = Adafruit_PCD8544(7, 6, 5, 4, 3);

void setup()
{
	ki.begin();
	ki.setContrast(50);
	ki.clearDisplay();
	ki.display();

	ki.drawRect(1, 1, ki.width()-1, ki.height()-1, BLACK);
	ki.setTextSize(1);
	ki.setTextColor(BLACK);
	ki.setCursor(5,5);
	ki.println("Nokia 3310 :)");
	ki.ki();
}

void loop()
{
}
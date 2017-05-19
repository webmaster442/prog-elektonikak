#include <Adafruit_NeoPixel.h>

#define PIN 6
#define PIXELS 8

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(PIXELS, PIN, NEO_GRB + NEO_KHZ800);

unsigned long int colors[] = { 0xFF0000, 0xFF7F00, 0xFFFF00, 0x00FF00, 0x96bf33, 0x0000FF, 0x8B00FF, 0xffffff };

void setup() {
  pixels.begin();
  pixels.setBrightness(20);
  for (int i=0; i<PIXELS; i++)
  {
    pixels.setPixelColor(i, pixels.Color(255,0,0));
    pixels.show();
    delay(150);
  }
  for (int i=0; i<PIXELS; i++)
  {
    pixels.setPixelColor(i, pixels.Color(0,255,0));
    pixels.show();
    delay(150);
  }
  for (int i=0; i<PIXELS; i++)
  {
    pixels.setPixelColor(i, pixels.Color(0,0,255));
    pixels.show();
    delay(150);
  }
  pixels.clear();
}

void loop() {
  // put your main code here, to run repeatedly:
  for (int i=0; i<PIXELS; i++)
  {
    int index = PIXELS > 8 ? i % PIXELS : i;
    pixels.setPixelColor(i, colors[index]);
    pixels.show();
    delay(200);
  }
}

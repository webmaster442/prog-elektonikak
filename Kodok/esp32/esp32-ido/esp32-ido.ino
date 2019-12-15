#include <WiFi.h>
#include "time.h"

int GetGMTOffsetSec(int offsethr)
{
  return 3600 * offsethr;
}

const char* ssid       = "Medveria Network";
const char* password   = "Macik.Csoki.Brumm:O)";

const char* ntpServer = "pool.ntp.org";
const long  gmtOffset_sec = GetGMTOffsetSec(+1);
const int   daylightOffset_sec = GetGMTOffsetSec(+1);

void printLocalTime()
{
  struct tm timeinfo;
  if(!getLocalTime(&timeinfo)){
    Serial.println("Failed to obtain time");
    return;
  }
  Serial.println(&timeinfo, "%A, %B %d %Y %H:%M:%S");
}

void setup()
{
  Serial.begin(115200);
  
  //connect to WiFi
  Serial.printf("Connecting to %s ", ssid);
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
  }
  Serial.println(" CONNECTED");
  
  configTime(gmtOffset_sec, daylightOffset_sec, ntpServer);
  printLocalTime();

  WiFi.disconnect(true);
  WiFi.mode(WIFI_OFF);
}

void loop()
{
  delay(1000);
  printLocalTime();
}

#include <ESP8266WiFi.h>

void prinScanResult(int networksFound) {
	char tipus[25];
	Serial.printf("%d network(s) found\n", networksFound);
	for (int i = 0; i < networksFound; i++) {
		switch (WiFi.encryptionType(i)) {
			case ENC_TYPE_WEP:
				strcpy(tipus, "WEP");
				break;
			case ENC_TYPE_TKIP:
				strcpy(tipus, "WPA / PSK");
				break;
			case ENC_TYPE_CCMP:
				strcpy(tipus, "WPA2 / PSK");
				break;
			case ENC_TYPE_AUTO:
				strcpy(tipus, "WPA vagy WPA2 / PSK");
				break;
			case ENC_TYPE_NONE:
				strcpy(tipus, "titkosittatlan");
				break;
		}
		Serial.printf("%d: %s, Ch:%d (%ddBm) %s\n",
								i + 1,
								WiFi.SSID(i).c_str(),
								WiFi.channel(i),
								WiFi.RSSI(i),
								tipus);
	}
}

void setup()
{
	Serial.begin(115200);
	Serial.println();
	WiFi.mode(WIFI_STA);
	WiFi.disconnect();
	delay(100);
	WiFi.scanNetworksAsync(prinScanResult, true);
}

void loop() {
}
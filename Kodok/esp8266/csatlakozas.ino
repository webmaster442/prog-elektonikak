#include <ESP8266WiFi.h>

#define SSID "TesztAP"
#define PASS "123456789"

void setup() {
	Serial.begin(115200);
	delay(5);
	WiFi.begin(SSID, PASS);
	Serial.print("Kapcsolodas");
	while (WiFi.status() != WL_CONNECTED) {
		delay(5);
		Serial.print(".");
	}
	Serial.println("\nSikeres kapcsolodas");
	Serial.print("IP cim: ");
	Serial.println(WiFi.localIP());
}

void loop() {
}
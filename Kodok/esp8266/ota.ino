#include <ESP8266WiFi.h>
#include <ESP8266mDNS.h>
#include <WiFiUdp.h>
#include <ArduinoOTA.h>

#define SSID "halozat"
#define PASS "halozatjelszo"
#define HOST "ESP OTA Teszt"
//teszt
#define UPDATEHASH "6c90aa3760658846a86a263a4e92630e"
#define IDO 500

void Start() {
	if (ArduinoOTA.getCommand() == U_FLASH)
		Serial.println("Program feltoltese...");
	else
		Serial.println("Fajlrendszer feltoltese");
}

void End() {
	Serial.println("OTA frissites vege");
}

void Error(ota_error_t error) {
	Serial.println("Hiba tortent");
	if (error == OTA_AUTH_ERROR)
		Serial.println("Azonositasi hiba");
	else if (error == OTA_BEGIN_ERROR)
		Serial.println("Kezdesi hiba");
	else if (error == OTA_CONNECT_ERROR)
		Serial.println("Kapcsolodasi hiba");
	else if (error == OTA_RECEIVE_ERROR)
		Serial.println("Adatatviteli hiba");
	else if (error == OTA_END_ERROR)
		Serial.println("Vege hiba");
}

void Progress(unsigned int progress, unsigned int total) {
	Serial.print("Folyamat: ");
	Serial.print(progress);
	Serial.print(" / ");
	Serial.println(total);
}

void setup() {
	Serial.begin(115200);
	WiFi.mode(WIFI_STA);
	WiFi.begin(SSID, PASS);
	Serial.print("Kapcsolodas");
	while (WiFi.status() != WL_CONNECTED) {
		delay(5);
		Serial.print(".");
	}
	Serial.println("\nSikeres kapcsolodas");
	ArduinoOTA.setPort(8266);
	ArduinoOTA.setHostname(HOST)
	ArduinoOTA.setPasswordHash(UPDATEHASH);
	ArduinoOTA.onStart(Start);
	ArduinoOTA.onEnd(End);
	ArduinoOTA.onError(Error);
	ArduinoOTA.onProgress(Progress);
	pinMode(LED_BUILTIN, OUTPUT);
	ArduinoOTA.begin();
}

void loop() {
	delay(IDO);
	digitalWrite(LED_BUILTIN, HIGH);
	delay(IDO);
	digitalWrite(LED_BUILTIN, LOW);
	ArduinoOTA.handle();
}
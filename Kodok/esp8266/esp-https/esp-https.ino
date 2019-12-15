#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServerSecure.h>
#include <ESP8266mDNS.h>
#include "key.h"
#include "x509.h"

#define NETWORK ""
#define PWD ""
#define WWW_USR "user"
#define WWW_PWD "pass"

ESP8266WebServerSecure server(443);
const int led = D0; //nodemcu led

void handleNotFound() {
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET) ? "GET" : "POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i = 0; i < server.args(); i++) {
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
}

void handleRoot() {
  server.send(200, "text/plain", "ESP HTTPS!\n API: led/0 or led/1");
}

void led0() {
  if (!server.authenticate(WWW_USR, WWW_PWD))
    return server.requestAuthentication();
  digitalWrite(led, 1); //nodemcu forditott logika
  server.send(200, "text/plain", "LED is now off");
}

void led1() {
  if (!server.authenticate(WWW_USR, WWW_PWD))
    return server.requestAuthentication();
  digitalWrite(led, 0); //nodemcu forditott logika
  server.send(200, "text/plain", "LED is now on");
}

void setup(void) {
  pinMode(led, OUTPUT);
  digitalWrite(led, 0);
  Serial.begin(115200);
  WiFi.begin(NETWORK, PWD);
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(250);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(NETWORK);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (MDNS.begin("esp8266")) {
    Serial.println("MDNS responder started");
  }

  server.setServerKeyAndCert_P(rsakey, sizeof(rsakey), x509, sizeof(x509));

  server.on("/", handleRoot);
  server.on("/led/0", led0);
  server.on("/led/1", led1);
  server.onNotFound(handleNotFound);

  server.begin();
  Serial.println("HTTPS server started");
}

void loop(void) {
  server.handleClient();
}

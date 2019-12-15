#include <WiFi.h>
#include <HTTPSServer.hpp>
#include <SSLCert.hpp>
#include <HTTPRequest.hpp>
#include <HTTPResponse.hpp>
#include <functional>

#include "cert.h"
#include "private_key.h"

#define WIFI_SSID "ssid
#define WIFI_PSK  "password"

using namespace httpsserver;

SSLCert cert = SSLCert(
                 example_crt_DER, example_crt_DER_len,
                 example_key_DER, example_key_DER_len
               );

HTTPSServer secureServer = HTTPSServer(&cert);

void indexHandler(HTTPRequest * req, HTTPResponse * res);
void login(HTTPRequest * req, HTTPResponse * res, std::function<void()> next);
void auth(HTTPRequest * req, HTTPResponse * res, std::function<void()> next);
void gpio(HTTPRequest * req, HTTPResponse * res, std::function<void()> next);

void setup() {
  Serial.begin(115200);
  WiFi.begin(WIFI_SSID, WIFI_PSK);
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(500);
  }
  Serial.print("Connected. IP=");
  Serial.println(WiFi.localIP());

  pinMode(LED_BUILTIN, OUTPUT);

  Serial.println("Starting server...");

  ResourceNode * index = new ResourceNode("", "GET", &indexHandler);
  secureServer.setDefaultNode(index);

  secureServer.addMiddleware(&login);
  secureServer.addMiddleware(&auth);
  secureServer.addMiddleware(&gpio);

  secureServer.start();
  if (secureServer.isRunning()) {
    Serial.println("Server ready.");
  }
}

void loop() {
  secureServer.loop();

}

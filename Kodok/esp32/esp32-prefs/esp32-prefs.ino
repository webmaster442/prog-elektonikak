#include <Preferences.h>
Preferences prefs;

#define KEY "teszt"

typedef struct {
  uint8_t p1;
  uint8_t p2;
} pelda_t;

void setup() {
  Serial.begin(115200);
  prefs.begin(KEY);

  pelda_t *kiirando = new pelda_t();

  kiirando->p1 = 12;
  kiirando->p2 = 42;

  Serial.println("iras...");
  prefs.putBytes(KEY, kiirando, sizeof(pelda_t));

  delay(2000);
  Serial.println("olvasas...");

  pelda_t *beolvasott = new pelda_t();
  prefs.getBytes(KEY, beolvasott, sizeof(pelda_t));

  Serial.println(beolvasott->p1);
  Serial.println(beolvasott->p2);
}

void loop() {
}

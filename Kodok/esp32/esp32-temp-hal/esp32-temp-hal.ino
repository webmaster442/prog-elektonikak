#ifdef __cplusplus
extern "C" {
#endif
uint8_t temprature_sens_read();
#ifdef __cplusplus
}
#endif

void setup() {
  Serial.begin(115200);
}

void loop() {
  Serial.print("Temperature: ");

  // Convert raw temperature in F to Celsius degrees
  Serial.print((temprature_sens_read() - 32) / 1.8);
  Serial.println(" C");

  int measurement = hallRead();

  Serial.print("Hall sensor measurement: ");
  Serial.println(measurement);

  delay(1000);
}

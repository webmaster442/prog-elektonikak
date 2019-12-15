#if CONFIG_FREERTOS_UNICORE
#define ARDUINO_RUNNING_CORE 0
#else
#define ARDUINO_RUNNING_CORE 1
#endif

void villog(void * param);
void sorosport(void *param);

void setup() {
  //soros port be
  Serial.begin(115200);
  xTaskCreatePinnedToCore(villog, "villog", 1024, NULL, 2, NULL, ARDUINO_RUNNING_CORE);
  xTaskCreatePinnedToCore(sorosport, "sorosport", 1024, NULL, 2, NULL, ARDUINO_RUNNING_CORE);
}

void loop() {
  //üres, mert a FreeRTOS ütemez
}

void villog(void * param)
{
  (void) param; //ütemezés

  //egyszeri setup a taszk előtt
  pinMode(LED_BUILTIN, OUTPUT);
  while (true)
  {
    digitalWrite(LED_BUILTIN, HIGH);
    vTaskDelay(100 *  portTICK_PERIOD_MS);
    digitalWrite(LED_BUILTIN, LOW);
    vTaskDelay(100 *  portTICK_PERIOD_MS);
  }
}

void sorosport(void *param)
{
  (void) param; //ütemezés
  while (true)
  {
    Serial.println("FreeRTOS...");
    vTaskDelay(1000 *  portTICK_PERIOD_MS);
  }
}

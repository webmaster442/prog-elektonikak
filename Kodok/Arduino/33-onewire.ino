#include <OneWire.h>
#include <DallasTemperature.h>

#define ONE_WIRE_BUS 2
#define TEMPERATURE_PRECISION 9

OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensors(&oneWire);
DeviceAddress cimek[10];
int mennyivan;

void setup()
{
  Serial.begin(9600);
  Serial.println("Eszkozok keresese");
  sensors.begin();
  Serial.print("Eszkozok szama: ");
  mennyivan = sensors.getDeviceCount();
  Serial.print(mennyivan, DEC);
  for (int i = 0; i < mennyivan; i++)
  {
    if (!sensors.getAddress(cimek[i], i))
    {
      Serial.print("Hiba az eszkoz cimenek lekerdezesekor: ");
      Serial.println(i);
    }
  }
  //pontossag bealitasa
  for (int i = 0; i < mennyivan; i++)
  {
    sensors.setResolution(cimek[i], TEMPERATURE_PRECISION);
  }
}

void printAddress(DeviceAddress deviceAddress)
{
  for (uint8_t i = 0; i < 8; i++)
  {
    if (deviceAddress[i] < 16) Serial.print("0");
    Serial.print(deviceAddress[i], HEX);
  }
}

void printTemperature(DeviceAddress deviceAddress)
{
  float tempC = sensors.getTempC(deviceAddress);
  Serial.print(tempC);
  Serial.print(" C, ");
  Serial.print(DallasTemperature::toFahrenheit(tempC));
  Serial.print(" F");
}

void loop()
{
  for (int i=0; i<mennyivan; i++)
  {
    Serial.print("Eszkoz: ");
    printAddress(cimek[i]);
    Serial.print(" Homerseklet: ");
    printTemperature(cimek[i]);
  }
  delay(5000);
}

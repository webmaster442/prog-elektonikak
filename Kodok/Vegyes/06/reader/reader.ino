void setup() {
  Serial.begin(9600);
}

void loop()
{
  while (!Serial) {} //leonardo wait;
  
  if (Serial.available() > 0)
  {
    Serial.print(analogRead(0));
    Serial.print(" ");
    Serial.println(analogRead(1));
    while (Serial.available() > 0) Serial.read();
  }
}

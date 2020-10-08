const int lightInputPin = 7; // Light sensor is on pin 7
const int switchCount = 100; // Count at which to switch

int lightState = LOW; // The current validated light state
int lightCount = 0; // Counter of sequential readings

void setup() {
  pinMode(lightInputPin, INPUT); // Set pin 7 to be an input

  // Read lightInputPin repeatedly to get an average
  lightCount = 0;
  for (int i=0; i<switchCount; i++)
    if (digitalRead(lightInputPin) == HIGH)
      lightCount++;
    else
      lightCount--;

  Serial.begin(9600);

  // If more reads were HIGH than were LOW, set state to HIGH
  lightState = (lightCount > 0) ? HIGH : LOW;
  lightCount = 0;
}

void loop() {
  // If this reading matches lightState, reset lightCount
  // Count up if this reading differs from lightState
  if (digitalRead(lightInputPin) == lightState)
    lightCount = 0;
  else
    lightCount++;

  // Toggle lightState when switchCount is reached
  if (lightCount >= switchCount)
  {
    lightState = (lightState == HIGH) ? LOW : HIGH;
    lightCount = 0;
  }

  Serial.print("lightInputPin: ");
  Serial.print(digitalRead(lightInputPin) == HIGH ? "HIGH" : "LOW");
  Serial.print("; lightCount: ");
  Serial.print(lightCount);
  Serial.print("; lightState: ");
  Serial.print(lightState == HIGH ? "HIGH" : "LOW");
  Serial.println();
}

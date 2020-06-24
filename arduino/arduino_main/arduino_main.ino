#include <DHT.h>;
#include <OneWire.h> 
#include <DallasTemperature.h>

//Constants
#define ONE_WIRE_PIN 8 
#define DHTPIN 7
#define DHTTYPE DHT22   // DHT 22  (AM2302)
#define SOIL_MOISTURE_PIN A0
#define LIGHT_PIN A1

DHT dht(DHTPIN, DHTTYPE);
OneWire oneWire(ONE_WIRE_PIN);
DallasTemperature sensors(&oneWire);
const int AirValue = 767;
const int WaterValue = 310;

//Variables
byte soilHum;  //Stores humidity value
byte soilTemp; //Stores temperature value
byte airTemp;
byte airHum;
byte soilMoisturePercent;
byte soilMoistureValue;
byte lightValue;

void setup() {
  Serial.begin(115200);
  dht.begin();
  sensors.begin();

}

void loop() {
  sensors.requestTemperatures();
  soilTemp = round(sensors.getTempCByIndex(0));
  airHum = round(dht.readHumidity());
  airTemp = round(dht.readTemperature());
  soilMoistureValue = round(analogRead(SOIL_MOISTURE_PIN));
  lightValue = round(analogRead(LIGHT_PIN));
  soilMoisturePercent = round(map(soilMoistureValue, AirValue, WaterValue, 40, 100));
  Serial.println(String("{\"air_humidity\":") + airHum + String(",\"air_temperature\":") + airTemp + String(",\"light_intensity\":") + lightValue + String(",\"location\": \"test\",\"soil_temperature\":") + soilTemp + String(", \"soil_humidity\":") + soilMoisturePercent + String("}"));
  Serial.flush();
  delay(600000);
}

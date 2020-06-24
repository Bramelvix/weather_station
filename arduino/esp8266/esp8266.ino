#include <ESP8266HTTPClient.h>
#include <ESP8266WiFi.h>
#include "config.h"

void setup() {
  Serial.begin(115200);                 //Serial connection
  WiFi.begin(ssid, password);   //WiFi connection
  while (WiFi.status() != WL_CONNECTED) {  //Wait for the WiFI connection completion
    delay(500);
    Serial.println("Waiting for connection");
  }
}
void loop() {
  if (WiFi.status() == WL_CONNECTED) { //Check WiFi connection status
    Serial.println("connected");
    if (Serial.available()) {
      HTTPClient http;    //Declare object of class HTTPClient
      http.begin(url);      //Specify request destination
      http.addHeader("Content-Type", "application/json");
      String data = Serial.readString();
      String json = data.substring(data.indexOf("{"), data.indexOf("}") + 1);
      Serial.println(json);
      int httpCode = http.POST(json);   //Send the request
      Serial.println(httpCode);   //Print HTTP return code
      http.end();  //Close connection
    }
  } else {
    Serial.println("Error in WiFi connection");
  }
}

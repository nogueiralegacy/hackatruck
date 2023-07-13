#include <ESP8266WiFi.h>
String apiKey = "XXXXXXXXXXXXX"; // Enter your Write API key from ThingSpeak
const char *ssid = "HackaTruckVisitantes"; // replace with your wifi ssid and wpa2 key
const char *password = ""; // Wifi password
const char* server = "api.thingspeak.com";

WiFiClient client;

void setup()
{
Serial.begin(115200);
delay(10);
Serial.println("Connecting to ");
Serial.println(ssid);
// Colocar ssid do wifi e a password
WiFi.begin(ssid);
while (WiFi.status() != WL_CONNECTED)
{
delay(500);
Serial.print(".");
}
Serial.println("");
Serial.println("WiFi connected");
}
void loop()
{
  // Escala de tensao 0-5v retornados, convertidos em 10 bits de informacao (0-1023)
float valor_analogico = analogRead(A0);
if (isnan(valor_analogico))
{
Serial.println("Failed to read from MQ-3 sensor!");
return;
}
 
if (client.connect(server, 80)) // "184.106.153.149" or api.thingspeak.com
{
String postStr = apiKey;
postStr += "&field1=";
postStr += String(valor_analogico/1023*100);
postStr += "r\n";
client.print("POST /update HTTP/1.1\n");
client.print("Host: api.thingspeak.com\n");
client.print("Connection: close\n");
client.print("X-THINGSPEAKAPIKEY: " + apiKey + "\n");
client.print("Content-Type: application/x-www-form-urlencoded\n");
client.print("Content-Length: ");
client.print(postStr.length());
client.print("\n\n");
client.print(postStr);
Serial.print("Gas Level: ");
Serial.println(valor_analogico/1023*100);
Serial.println("Data Send to Thingspeak");
}
delay(500);
client.stop();
Serial.println("Waiting...");
 
// thingspeak needs minimum 1.5 sec delay between updates.
delay(1500);
}
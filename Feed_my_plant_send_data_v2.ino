//#include <ArduinoHttpClient.h>
#include <Ethernet.h>
#include <SPI.h>

int sensorPin = A0;
int sensorValue = 0;

//Feedmyplant
char server[] = "http://www.feedmyplant.com";
byte myMac[] = { 0x90, 0xA2, 0xDA, 0x00, 0x0E, 0x03 };

int    HTTP_PORT   = 80;
String HTTP_METHOD = "GET"; //"GET" or "POST"
char   HOST_NAME[] = "www.feedmyplant.com"; // hostname of web server:
String PATH_NAME   = "/devices/c99dcd40/telemetry";
String external_id = "?external_id=";
String query = "sensor=";
String id = "c99dcd41";

EthernetClient client;


void setup() {  
  Serial.begin(9600);

  // initialize the Ethernet shield using DHCP:
  Serial.println("Obtaining an IP address using DHCP");
  if (Ethernet.begin(myMac) == 0) {
    Serial.println("Failed to obtaining an IP address");

    // check for Ethernet hardware present
    if (Ethernet.hardwareStatus() == EthernetNoHardware)
      Serial.println("Ethernet shield was not found");

    // check for Ethernet cable
    if (Ethernet.linkStatus() == LinkOFF)
      Serial.println("Ethernet cable is not connected.");

    while (true);
  }

  // print out Arduino's IP address, subnet mask, gateway's IP address, and DNS server's IP address
  Serial.print("- Arduino's IP address   : ");
  Serial.println(Ethernet.localIP());

  Serial.print("- Gateway's IP address   : ");
  Serial.println(Ethernet.gatewayIP());

  Serial.print("- Network's subnet mask  : ");
  Serial.println(Ethernet.subnetMask());

  Serial.print("- DNS server's IP address: ");
  Serial.println(Ethernet.dnsServerIP());

}

void loop() {

  if(client.connect(HOST_NAME, HTTP_PORT)) {
    Serial.println("Connected to server");
  } else {
    Serial.println("connection failed");
  }
  //sensorValue = analogRead(sensorPin);
  String sensor_read = String(analogRead(0));
  client.println(HTTP_METHOD + " " + PATH_NAME + external_id + id + "&" + query + String(sensor_read) + " HTTP/1.1");
  client.println("Host: " + String(HOST_NAME));
  client.println("Connection: close");
  client.println();
  
  while(client.available())
  {
    char c = client.read();
    Serial.print(c);
  }
  
  delay(2000);
  
}

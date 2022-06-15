# Feed my plant 🌱
handle you plants caring anywhere in real time !
Have a look ! 👀
> Live demo [http://www.feedmyplant.com](). 

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Screenshots](#screenshots)
* [Setup](#setup)
* [Usage](#usage)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
* [Contact](#contact)

## General Information
feed my plant is an application that allows you to receive information on the maintenance of your plants by combining software and hardware.

the main goal of this app is to stop letting your plants die.

you can find information on the maintenance of your plants directly in the interface of the application with somes advices and you can monitor the humidity rate in the pot in real time thanks to an Arduino on-board sensor.


## Technologies Used

application :
- Ruby on Rails - version 6.1.6
- Stimulus - version 3.0.1
- Bootstrap - version 5.1.3
- Fontawsome - version 3.0
- OpenWeatherMap API - version 5.15.4

hardware : 
- arduino UNO (DHCP + GET request sending data)
- ethernet shield 
- VS-ELEC Soil humidity hygrometer detection sensor module


## Features
- Search a plant, and filter them by level of difficulty
- Get some advices / informations about each plants
- Add a plant to your collection
- Filter your plant by room
- Get Meteo information in real time

- Monitor the humidity rate in the pot in real time ! 


## Screenshots
![Example screenshot](./app/assets/images/home-capture.png)
![Example screenshot](./app/assets/images/show-capture.png)
![Example screenshot](./app/assets/images/garden-capture.png)
![Example screenshot](./app/assets/images/alert-capture.png)

## Setup

To start to work or contribute on this project, please enter thoses commands bellow into your terminal : 
`git@github.com:lucas-vittaz/feed-my-plant.git
bundle install
yarn install
rails db:create
rails db:migrate
rails db:seed
rails s`
 
Arduino setup : 
`//#include <ArduinoHttpClient.h>
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


`void setup() { 
  `Serial.begin(9600);

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
  `Serial.print("- Arduino's IP address   : ");
  `Serial.println(Ethernet.localIP());`

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
  
  delay(2000);`
  


## Project Status
Project is: _in progress_
If you are intressed by this project fork it or you can contribute


## Room for Improvement
TODOs for future development :
- User can undock sensor 
- Scan a plant with google lens and add it into Feedmyplant
- Get PUSH notification when one of your plant need water


## Acknowledgements
Group project :
- Lucas Vittaz [https://github.com/lucas-vittaz]
- Sarah Menu: [https://github.com/sarahmenu]
- Anthony Gouvrillon [https://github.com/AntoGoo]


## Contact
Created by [@lucasvittaz.pro@gmail.com]- feel free to contact me!

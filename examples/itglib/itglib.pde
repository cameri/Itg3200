#include <Wire.h>
#include <itg3200.h>

ITG3200 gyro;

void setup(){
  Serial.begin(9600);
  gyro.begin(0x69);
  delay(1000);
}

void loop(){
  Serial.print("X=");
  Serial.println(gyro.getX());
  Serial.print("Y=");
  Serial.println(gyro.getY());
  Serial.print("Z=");
  Serial.println(gyro.getZ());
  delay(400);
}


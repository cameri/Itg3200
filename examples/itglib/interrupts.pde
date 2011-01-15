#include <Wire.h>
#include <itg3200.h>

// Connect INT pin of the ITG3200 to digital pin 12 of your Arduino
#define GYRO_INT_PIN (12)

ITG3200 gyro;

void setup(){
  Serial.begin(9600);
  
  // Attach our readGyro() function to pin 12
  attachInterrupt(GYRO_INT_PIN, readGyro, RISING);
  
  // Gyro default settings
  gyro.begin(0x69);
  // Active HI, Push-pull drive, 50uS pulse, clear on status read
  // Enable ready int
  gyro.setInterruptConfig(ITG3200::GYRO_INT_ACTHI
    | ITG3200::GYRO_INT_PUSHP | ITG3200::GYRO_INT_PULSE
    | ITG3200::GYRO_INT_STSRD | ITG3200::GYRO_INT_RDYEN);
}

void loop()
{
  // Idle
}

void readGyro()
{
  if (gyro.isInterruptReady())
  {
    Serial.print("X=");
    Serial.println(gyro.getX());
    Serial.print("Y=");
    Serial.println(gyro.getY());
    Serial.print("Z=");
    Serial.println(gyro.getZ());
  }
}


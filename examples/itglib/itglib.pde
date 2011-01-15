/*
 *   itglib.pde
 *
 *   Copyright (C) 2010  Ricardo Arturo Cabral <ing dot cabral dot mejia at gmail dot com>. All rights reserved.
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  See <license.txt>, if not, see 
 *   <http://www.gnu.org/licenses/>.
 */

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


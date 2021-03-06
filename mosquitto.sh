#!/bin/sh
 
#To use the new repository you should first import the repository package signing key:
wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key
 
#Then make the repository available to apt:
cd /etc/apt/sources.list.d/
 
#Then one of the following, depending on which version of debian you are using:
sudo wget http://repo.mosquitto.org/debian/mosquitto-wheezy.list
#sudo wget http://repo.mosquitto.org/debian/mosquitto-jessie.list
  
#Then update apt information:
sudo apt-get update
 
#And discover what mosquitto packages are available:
sudo apt-cache search mosquitto
 
#Or just install:
sudo apt-get install mosquitto
 
echo =========================================
echo MQTT Broker-Mosquitto Server Installed.
echo =========================================
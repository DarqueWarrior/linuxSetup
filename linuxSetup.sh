#!/bin/bash

# Make sure you have the lastest packages
sudo apt -y -q update

# Install Java JRE and JDK
sudo apt -y install default-jdk

# Install npm
sudo apt -y install npm

# Install n which we will use to install Nodejs
sudo npm install -g n

# Install Nodejs
sudo n stable

# Install bower, gulp and grunt used by agent
sudo npm install -g bower gulp grunt

# Install Maven
sudo apt install -y maven

# Install .NET Core RC2
# Install Prereq
sudo apt install -y libunwind8 libcurl3

wget http://security.ubuntu.com/ubuntu/pool/main/i/icu/libicu52_52.1-8ubuntu0.2_amd64.deb
sudo dpkg -i libicu52_52.1-8ubuntu0.2_amd64.deb
rm libicu52_52.1-8ubuntu0.2_amd64.deb

# Install 
sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
sudo apt install -y dotnet-dev-1.0.0-preview1-002702

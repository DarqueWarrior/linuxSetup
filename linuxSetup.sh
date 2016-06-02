#!/bin/bash

# Add repo for java
# sudo add-apt-repository -y ppa:webupd8team/java

# Make sure you have the lastest packages
sudo apt -y -q update

# Now we can actually install Java.
# sudo apt -y install oracle-java8-installer

# Now we need to set the default version of Java to use.
# sudo apt-get -y install oracle-java8-set-default
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

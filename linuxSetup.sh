#!/bin/bash

# Add .NET Core repo with key
sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893

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

# Install Maven, and and gradle for Java support
sudo apt install -y maven ant gradle

# Install .NET Core RC2 & Agent
# Install Prereq
sudo apt install -y libunwind8 libcurl3

wget http://security.ubuntu.com/ubuntu/pool/main/i/icu/libicu52_52.1-8ubuntu0.2_amd64.deb
sudo dpkg -i libicu52_52.1-8ubuntu0.2_amd64.deb

# Remove deb when done with it.
rm libicu52_52.1-8ubuntu0.2_amd64.deb

# Install  
sudo apt install -y dotnet-dev-1.0.0-preview1-002702

# Download agent
dl=~/Downloads
if [ ! -d "$dl" ]; then
   mkdir ~/Downloads
fi
cd ~/Downloads
wget https://github.com/Microsoft/vsts-agent/releases/download/v2.101.1/vsts-agent-ubuntu.14.04-x64-2.101.1.tar.gz

# Stamp out an Agent
ad=~/Agents
if [ ! -d "$ad" ]; then
   mkdir ~/Agents
fi
cd ~/Agents

mkdir a1
cd a1

tar xzf ~/Downloads/vsts-agent-ubuntu.14.04-x64-2.101.1.tar.gz

# Setup Capabilities
export M2_HOME=$(which mvn)
export ANT_HOME=$(which ant)
export GRADLE_HOME=$(which gradle)
export dotnet=$(which dotnet)
export docker=$(which docker)

# Prime the .Env file for the agent
./env.sh

./config.sh
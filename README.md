# Linux Setup
Repo of scripts used to setup Linux machines as Visual Studio Team Services build machines.

Simply execute the script to install
- .NET Core 1.0
- Java JDK
- Node.js
- NPM
- Gulp
- Grunt
- Bower
- Maven
- Ant
- Gradle

After the script completes cd to ~/Agents/a1 and execute ./config.sh to configure your agent.

You can do everything with one command:

wget -O - https://raw.githubusercontent.com/DarqueWarrior/linuxSetup/master/linuxSetup.sh | bash && cd ~/Agents/a1 && ./config.sh --acceptteeeula --runasservice --url https://YOURACCOUNT.visualstudio.com --auth PAT --pool Default --token YOURTOKEN --agent YOURAGENTNAME --work _work && sudo ./svc.sh install && sudo ./svc.sh start

You can read how to use it on [DonovanBrown.com](http://www.donovanbrown.com/post/2016/06/03/Building-a-Linux-Based-Visual-Studio-Team-Service-Build-Machine-with-Docker-Support)
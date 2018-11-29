[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com) 
# IPLock
This code will let you scan for devices on other gateways.
  
You can use it to check which kind of firewall is there at a specific gateway.
  
NOTE : This program does NOT have a good interface(user friendly when trying to scan a specific range of sub-netmasks). So, pull requests would be appreciated.
# How To RUN it
Use the following commands bellow to run the code :-
  
`git clone https://github.com/Pranav-Bhaskar/IPLock.git` to download the file.
  
`unzip IPLock.zip -d IPLock` to unzip the file.
  
NOTE : It may be that you dont have the tool to unzip it so you can unzip it manually.
  
`cd IPLock` to change the current working directory to the repository.
  
`chmod +x scan.sh` to give it executable permitions.
  
`sudo ./scan.sh` to run the script.

Paste the file in /usr/bin/ directory to be used as a command in linux based systems.
# Advantages
1. Your devices mac address is not needed to be registered.
2. Fully automated.
3. Saves details of each sub-netmask in a unique file for future reference.
4. Stores the mac address, IP and hostname (if possible / discoverable) of the devices connected.
# Disadvantages
1. Time consuming(took me 2-3 hours for a full scan).
2. While the scan is in progress the user cant perform any task which requires the use of the network manager.
  
NOTE : Doing so may effect the scan.

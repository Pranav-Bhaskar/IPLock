[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com) 
# IPLock
This code will let you scan for devices on other subnets.
  
You can use it to check which kind of firewall is there at a specific subnet.
  
NOTE : This program does NOT have a good interface(user friendly when trying to scan a specific range of sub-netmasks). So, pull requests would be appreciated.
# How To RUN it
Use the following commands bellow to run the code :-
  
`git clone https://github.com/Pranav-Bhaskar/IPLock.git` to download the file.
  
`unzip IPLock.zip -d IPLock` to unzip the file.
  
NOTE : It may be that you dont have the tool to unzip it so you can unzip it manually.
  
`cd IPLock` to change the current working directory to the repository.
  
`chmod +x install` to give it executable permitions.
  
`sudo ./install` to begin the installation.

`scan` to be used as a command to initiate the scan in linux based systems.
# Advantages
1. Your devices mac address is not needed to be registered.
2. Fully automated.
3. Saves details of each sub-netmask in a unique file for future reference.
4. Stores the mac address, IP and hostname (if possible / discoverable) of the devices connected.
5. While the scan is in progress the user can use the network(NOTE : It may slow down the scan).

# Disadvantages
1. Time consuming(took me 21 minutes for a full scan).

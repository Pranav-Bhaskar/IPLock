#This code will let you scan for PC's on other subnets.

start=0		#This is the first subnet it will scan for.
last=255	#This is the last subnet it will scan for.

ip=84	#Any Random number from 0-255 (make sure not to chose your router)
fix=192.168.
gateway=$start

interface=wlan0

mkdir Scan_Result;

if nmap -V >> /dev/null; then
	echo "Nmap Installed.";
else
	echo "Installing Nmap";
	sudo apt -y install nmap;
fi

if ifconfig -V >> /dev/null; then
	echo "net-tools Installed.";
else
	echo "Installing net-tools";
	sudo apt -y install net-tools;
fi

sudo ifconfig $interface 255.255.0.0;

while [ $gateway -le $last ]
do
	while [ `ifconfig | grep -c "$fix*.255"` -eq 0 ]; do
		echo "Not Connected";
		sleep 10;
	done
	echo -n "Scanning For $fix$gateway.0/24";
	up=`sudo nmap -sP -n -oX "./Scan_Result/$gateway.xml" "$fix$gateway.0/24" | grep -o "(.* host.*up)" | sed 's/[^0-9]//g'`;
	if [ $up -gt 0 ];then
		echo "$gateway - UP" >> host.list;
		echo " - UP";
	else
		echo "$gateway" >> host.list;
		echo " - DOWN";
	fi
	gateway=$(($gateway + 1));
done
echo "Done All Scans.";
sudo service network-manager restart;
echo "Restarted network manager";

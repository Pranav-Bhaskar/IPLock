#This code will let you scan for PC's on other gateways.

start=0		#This is the first gateway it will scan for.
last=255	#This is the last gateway it will scan for.

ip=84	#Any Random number from 0-255 (make sure not to chose 111)
fix=192.168.
gateway=$start
mkdir Scan_Result;
if nmap -V >> /dev/null; then
	echo "Nmap Installed.";
else
	echo "Installing Nmap";
	sudo apt install nmap;
fi

while [ $gateway -le $last ]
do
	sudo ip addr add "$fix$gateway.84/24" dev wlan0;
	sudo ip route del default;
	sudo ip route add default via "$fix$gateway.111";
	while [ `ifconfig | grep -c "$fix*.255"` -eq 0 ]; do
		echo "Not Connected";
		sleep 5;
	done
	echo -n "Scanning For $fix$gateway.0/24";
	up=`sudo nmap -sP -n -oX "./Scan_Result/$gateway.xml" "$fix$gateway.0/24" | grep -o "(.* host.*up)" | sed 's/[^0-9]//g'`;
	if [ $up -gt 1 ];then
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

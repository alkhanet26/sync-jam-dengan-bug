#!/bin/bash
# ping by AlkhaNET

{
echo -e "Install Paket Pendukung"
sleep 1
opkg update && opkg install curl libcurl
clear
echo -e "Downloading Binaries"
sleep 2
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/jam" -O /sbin/jam && chmod +x /sbin/jam
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/ping.sh" -O /sbin/ping.sh && chmod +x /sbin/ping.sh
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/cleanup" -O /sbin/cleanup && chmod +x /sbin/cleanup
echo -e "Updating Binaries Selesai"
sleep 3
clear && bash --login
}

o#!/bin/bash
# ping by AlkhaNET

{
echo -e "Install Paket Pendukung"
sleep 1
opkg update && opkg install curl libcurl
clear
echo -e "Downloading Binaries"
sleep 2
echo -e "=   25%" && wget -q "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/jam" -O /sbin/jam && chmod +x /sbin/jam
sleep 1
echo -e "==  50%" && wget -q "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/ping.sh" -O /sbin/ping.sh && chmod +x /sbin/ping.sh
sleep 1
echo -e "=== 75%" && wget -q "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/cleanup" -O /sbin/cleanup && chmod +x /sbin/cleanup
sleep 1
echo -e "====100%" && wget -q "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/release_ram.lua" -O /usr/lib/lua/luci/controller/release_ram.lua
sleep 2
echo -e "Updating Binaries Selesai"
sleep 3
clear && bash --login
}

#!/bin/bash
# ping by AlkhaNET

{
echo -e "Downloading Binaries"
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/jam.sh" -O /sbin/jam.sh && chmod +x /sbin/jam.sh
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/sync-jam-dengan-bug/main/ping.sh" -O /sbin/ping.sh && chmod +x /sbin/ping.sh
echo -e "Updating Binaries Selesai"
}

#!/bin/bash
# ping by AlkhaNET
#
echo -e "ping.sh : Starting ping koneksi"
logger "ping.sh : Starting ping koneksi"
	ping -c 5 8.8.8.8 | grep round-trip > /tmp/cping
	
	pms=$(cat /tmp/cping | cut -d/ -f4)
	msa=$(cat /tmp/cping | grep -o ms)
	
if [ $msa = "ms" ]; then	
	echo -e "ping.sh : time = $pms"
	logger "ping.sh : time = $pms"
else
	/sbin/jam.sh
fi	

rm /tmp/cping
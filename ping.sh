#!/bin/bash
# ping by AlkhaNET

bug="$1"

echo -e "Cek Koneksi Internet : "${bug}
logger "Cek Koneksi Internet : "${bug}
#	ping -c 5 ${bug} | grep round-trip > /tmp/cping
	
	pms=$(ping -c 5 ${bug} | grep round-trip | cut -d/ -f4)
	msa=$(ping -c 5 ${bug} | grep round-trip | grep -o ms)
	
if [ $msa = "ms" ]; then	
	echo -e "ping.sh : time = $pms $msa"
	logger "ping.sh : time = $pms $msa"
else
	echo -e "Tidak ada Koneksi Internet"
	echo -e "Restart Tunneling"
	sleep 2
	clear
	/sbin/jam.sh ${bug}
fi	

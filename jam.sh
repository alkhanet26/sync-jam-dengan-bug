#!/bin/bash
# Sync Jam otomatis berdasarkan bug isp by AlkhaNET
# Mod Script Extended GMT+7 by Vito Harhari

bug="$1"

echo -e "jam.sh : Stopping Tunnel"
logger "jam.sh : Stopping Tunnel"
/etc/init.d/openclash stop
/etc/init.d/passwall stop

    curl -i ${bug} | grep Date > /tmp/date
    
    day=$(cat /tmp/date | cut -b 12-13)
    month=$(cat /tmp/date | cut -b 15-17)
    year=$(cat /tmp/date | cut -b 19-22)
    time=$(cat /tmp/date | cut -b 24-31)
    kalender=$(/bin/date)
    
    
    case $month in
        "Jan")
           month="01"
            ;;
        "Feb")
            month="02"
            ;;
        "Mar")
            month="03"
            ;;
        "Apr")
            month="04"
            ;;
        "May")
            month="05"
            ;;
        "Jun")
            month="06"
            ;;
        "Jul")
            month="07"
            ;;
        "Aug")
            month="08"
            ;;
        "Sep")
            month="09"
            ;;
        "Oct")
            month="10"
            ;;
        "Nov")
            month="11"
            ;;
        "Dec")
            month="12"
            ;;
        *)
           continue

    esac

date -u -s $year.$month.$day-$time

echo -e Jam.sh : "Anda Melakukan Sync dengan domain : ${bug}"
logger Jam.sh : "Anda Melakukan Sync dengan domain : ${bug}"

echo -e "jam.sh : Waiting restarting tunnel"
logger "jam.sh : Waiting restarting tunnel"
/etc/init.d/passwall restart
/etc/init.d/openclash restart

echo -e "jam.sh : Set Time to : $kalender"
logger "jam.sh : Set Time to : $kalender"

rm /tmp/date
echo -e "jam.sh : Proses Sync is Completed"
logger "jam.sh : Proses Sync is Completed"

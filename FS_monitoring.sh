#!/bin/bash
############################## 
# This Script will send an Alert when Disk exceeds mentioned threshold.
# Author: Md Tanvir
MAILADDRESS="tadmin@localhost"
# set usage alert VALUE
VALUE=90
# Hostname
HOSTNAME=$(hostname)
# Mail client
MAIL=/bin/mail
EMAIL=""

for line in $(df -hP | egrep '^/dev/' | awk '{ print $6 "_:_" $5 }')
do
part=$(echo "$line" | awk -F"_:_" '{ print $1 }')
part_usage=$(echo "$line" | awk -F"_:_" '{ print $2 }' | cut -d'%' -f1 )

if [ $part_usage -ge $VALUE -a -z "$EMAIL" ];
 then
 EMAIL="$HOSTNAME - $(date): Below File System is exceeding VALUE\n"
 EMAIL="$EMAIL\n$part ($part_usage%) >= (VALUE = $VALUE%)"

elif [ $part_usage -ge $VALUE ];
 then
 EMAIL="$EMAIL\n$part ($part_usage%) >= (VALUE = $VALUE%)"
 EMAIL="$EMAIL\n"
 fi
done

if [ -n "$EMAIL" ];
then
 echo -e "$EMAIL" | $MAIL -s "File System Usage Alert "$HOSTNAME" Need your Attention!" "$MAILADDRESS"
fi

## END Script ###

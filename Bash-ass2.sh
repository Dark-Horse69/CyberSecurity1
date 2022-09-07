#!/bin/bash

ls /usr/share/applications | awk -F '.desktop' ' { print $1}' -> ~/Desktop/newapplications.txt
diff -c ~/Desktop/applications.txt ~/Desktop/newapplications.txt

service --status-all | awk  '{print $4}' -> ~/Desktop/newservices.txt
diff -c ~ /Desktop/serives.txt ~/Desktop/newservices.txt

cat /etc/services | grep -o '[[:digit:]]*' |awk '$1 <1023' -> ~/Desktop/newports.txt 
diff -c ~/Desktop/ports.txt ~/Desktop/newports.txt

CURL http://dev.virtualearth.net/REST/v1/Locations?countryRegion=Australia&adminDistrict=QLD&locality=Runcorn&postalCode=4113&addressLine=Beechel&key=AklX82YXHHg_1qruaAqch-j7YEWp4Tm8xeHTYyMAtzrG5E7g_yBKhaZ9ZP8zAQ2I

curl "http://dev.virtualearth.net/REST/v1/Imagery/Map/Road/$coordinates/15?mapSize=500,500&key=AklX82YXHHg_1qruaAqch-j7YEWp4Tm8xeHTYyMAtzrG5E7g_yBKhaZ9ZP8zAQ2I"

for num in {1..50}; do arping -c 1 172.16.1.$num | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'->~/Desktop/newmacs.txt  ; done
diff -c ~/Desktop/macs.txt ~/Desktop/newmacs.txt

#!/bin/bash
 
#colors
green="#B7CE42"
grey="#666666"

dte(){
    dte="$(date +"%d %b")"
    echo "^s[right;$grey;$dte  ]"
}

tme(){
    tme="$(date +"%H:%M")"
    echo "^s[right;$grey;$tme;$clear ]"
}

~/bin/autorun.sh 

while true; do
    wmfs -c status "top $(dte) $(tme)"
    sleep 1
done

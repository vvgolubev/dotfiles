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
 
TIMING=1
 
statustext()
{
    wmfs -c status "top $(dte) $(tme)"
}

feh --bg-scale /media/images/mars.jpg &
#~/.config/wmfs/gifbg.sh /media/images/featherfurl.gif &
/opt/Telegram/Telegram & 
deluge &
cbatticon & 
nm-applet & 
xset b off & 
 
while true;
do
    statustext
    sleep $TIMING
done
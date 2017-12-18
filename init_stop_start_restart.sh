#!/bin/sh
# Copyright (C) 2008 OpenWrt.org
# Update December 18, 2017 bob murphy/thisoldgeek
START=99
start() {
        sleep 5   # make sure boot process is done, no more console msgs
        . /etc/profile
        python /opt/scripts/wunderground_parse.py &
        echo "Weather VFD App Started"
} 

stop()  {
    pid=`ps -ef | grep '[p]ython /opt/scripts/wunderground_parse.py' | awk '{ pr
    echo $pid
    kill $pid
    sleep 2
    echo "Weather VFD App Stopped"
}

case "$1" in
  start)
   start
   ;;
 stop)                                                                         
   stop                                                                         
   ;;                             
  restart)                        
   stop                           
   start                          
   ;;       
  *)        
    echo "Usage: /etc/init.d/weather {start|stop|restart}"
    exit 1                                                
esac                                                      
exit 0  

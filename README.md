# **OpenWRT Scripts**

## *Description:*
Scripts for running a Wunderground local weather feed to a hacked ASUS router and display on a repurposed Epson Point-of-Sale VFD.

See the posting at:
http://thisoldgeek.blogspot.com/2013/03/openwrt-start-python-script-at-boot-time.html



## *Scripts:*
* init_stop_start_restart.sh
* wunderground_parse.py

As root:
Install init script to /etc/init.d/weather and enable
Install wunderground_parse.py under /opt/scripts
chmod +x both

## *Update 12-18-2017:*
Minor corrections on VCarve files and Job Setup Sheets

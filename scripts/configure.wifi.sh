#!/bin/bash

export BOBO_WIFI_NET_INTERFACE=$(find /sys/class/net -follow -maxdepth 2 -name wireless 2>/dev/null|cut -d / -f 5|head -1)

export BOBO_WIFI_NET_SSID="Alcatel 1S"
export BOBO_WIFI_NET_PWD="acad3003"

echo " BOBO_WIFI_NET_INTERFACE=[${BOBO_WIFI_NET_INTERFACE}]"
echo " BOBO_WIFI_NET_SSID=[${BOBO_WIFI_NET_SSID}]"
echo " BOBO_WIFI_NET_PWD=[${BOBO_WIFI_NET_PWD}]"



ls -alh /etc/network/interfaces.d/

cat <<EOF >./.tmp.${BOBO_WIFI_NET_INTERFACE}.interface
# my wifi device
allow-hotplug wlp2s0
iface ${BOBO_WIFI_NET_INTERFACE} inet dhcp
        # wpa-ssid ESSID
        wpa-ssid ${BOBO_WIFI_NET_SSID}
        # wpa-psk PASSWORD
        wpa-psk ${BOBO_WIFI_NET_PWD}
EOF

cat ./.tmp.${BOBO_WIFI_NET_INTERFACE}.interface | sudo tee /etc/network/interfaces.d/${BOBO_WIFI_NET_INTERFACE}.interface

ls -alh /etc/network/interfaces.d/

sudo ifup ${BOBO_WIFI_NET_INTERFACE}
#!/bin/bash
sysctl net.ipv4.ip_forward=1
route del -net default netmask 0.0.0.0 gw 192.168.10.1 enp0s8
iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i enp0s8 -o enp0s3 -j ACCEPT

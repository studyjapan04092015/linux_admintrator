#!/bin/bash

route del -net 192.168.56.0 netmask 255.255.255.0 gw 0.0.0.0 enp0s8

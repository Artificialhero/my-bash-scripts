#!/bin/bash
echo 'Gimme an IP to measure!'
read ip
#reset all counters & iptables rules
iptables -Z && iptables -F
#measure incoming traffic to ip target
iptables -I INPUT 1  -s $ip -j ACCEPT
#measure outgoing traffic to ip target
iptables -I OUTPUT 1 -d $ip -j ACCEPT

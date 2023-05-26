#! /usr/bin/env python
import scapy.all as scapy
import sys
import random as rand

#values for the packet
sourceIP = "192.168.77.101"
sourcePort = rand.randrange(2000, 2500)
sourceMac = "08:00:27:74:e0:4d"

destIP = "192.168.88.103"
destPort = 666 #rand.randrange(2000,2500)
destMac = "08:00:27:ed:bc:b3" #snort

#mac102 = "08:00:27:95:25:2a"
#mac103 = "08:00:27:fe:79:1f"

sequence = rand.randrange(1, 9999)
ttl = 64
tcpFlags = "S"
payload = "hello world"

#layers of the packet
ether = scapy.Ether(src=sourceMac, dst=destMac)
ip = scapy.IP(src=sourceIP, dst = destIP, ttl=ttl)
tcp = scapy.TCP(sport=sourcePort, dport=destPort, flags=tcpFlags, seq = sequence)

packet = ether / ip / tcp / scapy.Raw(payload) 
scapy.srp(packet, iface = "eth0")

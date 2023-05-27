#! /usr/bin/env python
import scapy.all as scapy
import sys
import random as rand

sourceIP = scapy.get_if_addr("eth0")

destIP = str( input("insert the destination IP address: "))
while destIP != "192.168.77.101" and destIP != "192.168.88.103" :
    destIP = str( input("invalid destination IP address, insert a new one: "))

sourcePort = rand.randrange(2000, 2500)
destPort = rand.randrange(2000, 2500)
sequence = rand.randrange(1, 9999)
ttl = 64
tcpFlags = "S"
payload = "hello world"

#packet build
ip = scapy.IP(
    src = sourceIP,
    dst = destIP, 
    ttl=ttl
    )
tcp = scapy.TCP(
    sport = sourcePort,
    dport = destPort, 
    flags = tcpFlags, 
    seq = sequence)

packet = ip / tcp / scapy.Raw(payload) 
scapy.send(packet)

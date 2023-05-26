# NetSecLab-SNORT
Repository for the Network Security Laboratory (SNORT) of group 4


				______                     
	_________        .---"""      """---.              
	:______.-':      :  .--------------.  :             
	| ______  |      | :                : |             
	|:______B:|      | |      ,,_       | |             
	|:______B:|      | |     o"  )~     | |             
	|:______B:|      | |      ''''      | |             
	|         |      | |                | |             
	|:_____:  |      | |     SNORT3     | |             
	|    ==   |      | :                : |             
	|       O |      :  '--------------'  :             
	|       o |      :'---...______...---'              
	|       o |-._.-i___/'             \._              
	|'-.____o_|   '-.   '-...______...-'  `-._          
	:_________:      `.____________________   `-.___.-. 
			.'.eeeeeeeeeeeeeeeeee.'.      :___:
		      .'.eeeeeeeeeeeeeeeeeeeeee.'.         
		     :____________________________:
 


=================================================================
## TODO

SNORT

- ☑ Install Desktop Environment
- ☑ Install latest SNORT version (Remove SNORT3 & Clean .profile)
- ☑ Fix slow closure of SNORT = ```--daq afpacket```
- ☑ Enable ipv4 forwarding
- ☑ Disable ipv6

CLIENTS

- ☑ Fix ping not reaching clients

GENERAL

- ☑ Add manuals
- ☑ Add packets
-    Slides
-    Report

## EXERCISE
IDS
 1. First exercise with ping (common with group5) (generate alert for ping from every source to every destination) together
 2. Second exercise alert ping from a source IP to a destination IP not together
 3. A restring only to specific flag
 4. Third exercise use different protocol to generate an alert for the scapy packet
 5. Restringing to ACK (*A for SYN/ACK or RST/ACK)
 6. Fourth exercise something on ports 53 (allow company dns 8i.103 and not allow external ‘use variables for Home Network’ or same subnet)
 7. On user agent (RegEx)
 8. Fifth exercise (common with group5) alert SQL injection and add a message to the rule
 9. Port scanning (other module)
 10. Sixth exercise with the wireshark dump (better windows)

IPS
Do almost the same but blocking instead of alert and see result (for pcacp will be 'would-block').
20. Ping same subnet (not working)
21. Ping intra subnet (working) & TCP (working)
22. Use the rule 4a and see that only to external is blocking, on the same subnet not obviously
23. Allow only for unitn.it domains usign sd_pattern (check rules order for IPS)
24. Port scanning if blocking
25. SQL block drop
 

=================================================================
Notes

- ```tcpdump -ni ethX``` (to disable dns resolution)
- ```nslookup google.com 1.1.1.1```  dnsname dnsserver
- ```apk add binaries/snort3-3.1.61.0-r0.apk --allow-untrusted``` installing self compiled host
- ```$ modprobe -a vboxsf; mount -t vboxsf Materiale /mnt/shared```
- ```VBoxClient --draganddrop``` enable services Guest Addition


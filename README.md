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
##TODO

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

##EXERCISE
IDS
 1. First exercise with ping (common with group5) (generate alert for ping from every source to every destination) together
 2. Second exercise alert ping from a source IP to a destination IP not together
 3. Third exercise use different protocol to generate an alert for the scapy packet
 4. Fourth exercise something on ports 53 (allow company dns and not allow external or same subnet. Allow external only for unitn.it domains usign sd_pattern)
 5. Fifth exercise (common with group5) alert SQL injection and add a message to the rule
 6. Port scanning module
 7. Sixth exercise with the wireshark dump
6. Exercises IPS
 1. Do almost the same but blocking instead of alert and see result (for pcacp will be 'would-block')

=================================================================
Notes

- ```tcpdump -ni ethX``` (to disable dns resolution)
- ```nslookup google.com 1.1.1.1```  dnsname dnsserver
- ```apk add binaries/snort3-3.1.61.0-r0.apk --allow-untrusted``` installing self compiled host
- ```$ modprobe -a vboxsf; mount -t vboxsf Materiale /mnt/shared```
- ```VBoxClient --draganddrop``` enable services Guest Addition


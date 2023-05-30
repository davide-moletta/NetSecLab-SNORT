echo -e "Adding NFQueue usign iptables...\n"
iptables -I FORWARD -j NFQUEUE --queue-num=0 --queue-bypass
iptables -L
echo -e "\nNFQueue up and running\n"

alias snort3="snort --daq afpacket -A alert_full"
alias snort3_ips="snort --daq-dir /usr/local/lib/daq -c /root/snort/confs/snort_ips_nfq.lua -Q -A alert_full"
alias snort3_pcap="snort --daq pcap -A alert_fast"
alias snort3_qakbot="snort -c /usr/local/etc/snort/snort.lua -A alert_full --lua \"alert_full = { file=true }\""

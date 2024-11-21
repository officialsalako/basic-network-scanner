#!/bin/bash

# Scan IP addresses with this 
scan_ip() {
    ip=$1
    echo "$Scanning $ip..."
    if ping -c 1 -W 1 $ip &> /dev/null; then
	echo "$ip is up" >> outputs.txt
	echo "open ports on $ip>" >> outputs.txt
	for port in {20,21,22,23,80,443}; do
	    (echo > /dev/tcp/$ip/$port) >/dev/null 2>&1 && echo "Port $port is open" >> outputs.txt
	done
    else
	echo "$ip is down" >> outputs.txt
    fi
}

# Cleanup previous outputs
> outputs.txt

# Scan range of IP addresses to check
echo "Enter the IP address range e.g., 192.168.1..:"
read ip_range
echo "Enter the starting IP:"
read start_ip
echo "Enter the ending IP:"
read end_ip

# Scan the range of IP addresses
for i in $(seq $start_ip $end_ip); do
    scan_ip "${ip_range}${i}"
done

echo "Scans completed. Your results are saved in outputs.txt"

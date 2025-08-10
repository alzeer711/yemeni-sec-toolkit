#!/bin/bash
echo "Passive ARP neighbors:"
arp -a | awk '{print $2 " " $4}'

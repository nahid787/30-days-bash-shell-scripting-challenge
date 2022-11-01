#!/bin/bash
# Author: Morshed Hasan
# Date: Nov 1, 2022
# Modification date: Nov 1, 2022
# Description: This script check your system helth

server_name=$(hostname)
#Memory check
echo "#######"
echo "The current memory usage on $server_name is: "
free -h
echo "#######"

#CPU check
echo "#######"
echo "The current CPU load on $server_name is: "
echo ""
uptime
echo "#######"

#TCP connection check
echo "#######"
echo "Total TCP connections on ${server_name}: "
echo ""
cat  /proc/net/tcp | wc -l
echo "#######"

#Karnel check
echo "#######"
echo "The exact Kernel version on ${server_name} is: "
echo ""
uname -r
echo "#######"

#file system disk space usage
echo "#######"
echo "file system disk space usage"
echo ""
df -h
echo "#######"

#show who is logged on
echo "#######"
echo "show who is logged on"
echo ""
who
echo "#######"

#!/bin/bash


date >> info.txt

echo "System Hostname: " >> info.txt
hostname >> info.txt

echo "Operating System: " >> info.txt
uname -o >> info.txt

echo "System Uptime: " >> info.txt
uptime >> info.txt

echo "Linux Kernel Version: " >> info.txt
uname -v >> info.txt

echo "General CPU Info: " >> info.txt
lscpu >> info.txt

echo "Amount of memory available: " >> info.txt
free -h >> info.txt

echo "IP info: " >> info.txt
ip addr >> info.txt

echo "Amount of file system utilization: " >> info.txt
df -h -T >> info.txt

echo "Last 5 lines of general log file with the word error: " >> info.txt
cat /var/log/syslog | grep error | tail -n 5 >> info.txt


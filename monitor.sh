#!/bin/bash

echo "===== Server Performance Stats ====="
echo ""

echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo ""

echo "Memory Usage:"
free -h
echo ""

echo "Disk Usage:"
df -h /
echo ""

echo "Top 5 Processes by CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo ""

echo "Top 5 Processes by Memory:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo ""
echo "uptime:"
uptime
echo ""
echo "====================================" 

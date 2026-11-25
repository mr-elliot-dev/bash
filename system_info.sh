#!/bin/bash

echo "===== SYSTEM INFORMATION ====="

echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Operating System:"
uname -o

echo "Kernel Version:"
uname -r

echo "Current Date:"
date

echo "Disk Usage:"
df -h /

echo "Memory Usage:"
free -h

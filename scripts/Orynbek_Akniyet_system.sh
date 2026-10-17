#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="

echo "Name: Akniyet"
echo "Surname: Orynbek"
echo "Group: IT2-2310"
echo "Student ID: 38385"

echo ""
echo "=============================="
echo "System Information"
echo "=============================="

echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -a)"

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Memory Usage:"
free -h

echo ""
if [ -f "Orynbek_Akniyet_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi

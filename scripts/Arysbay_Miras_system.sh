#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="

echo "Name: Miras"
echo "Surname: Arysbay"
echo "Group: IT2-2308
echo "Student ID: 37011

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
df -h

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "=============================="
echo "File Check"
echo "=============================="

PROJECT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

if [ -f "$PROJECT_DIR/Arysbay_Miras_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi

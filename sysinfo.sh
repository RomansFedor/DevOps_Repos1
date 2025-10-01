#!/bin/bash

echo "===== OS VERSION ====="
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"'
uname -sr

echo
echo "===== USERS WITH BASH ====="
grep "bash" /etc/passwd | cut -d: -f1,7

echo
echo "===== OPEN PORTS ====="
ss -tuln

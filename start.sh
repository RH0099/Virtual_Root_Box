#!/bin/bash
echo "[+] Starting Virtual Root Environment..."

# Set virtual root using proot
proot -0 -w /root -b root-env /data/data/com.termux/files/usr/bin/bash --login <<EOF
echo "[✓] You are now in virtual root shell!"
bash
EOF

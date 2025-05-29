#!/bin/bash
echo "[+] Installing VR-RootBox..."
cp -r VR-RootBox $HOME/
cd $HOME/VR-RootBox

# Install required packages
while read pkg; do
  if ! command -v $pkg &>/dev/null; then
    echo "[*] Installing $pkg..."
    pkg install -y $pkg
  fi
done < requirements.txt

chmod +x start.sh fix.sh
echo "[✓] Installed. Run with: bash start.sh"

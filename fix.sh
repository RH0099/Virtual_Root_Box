#!/bin/bash
echo "[*] Running Auto Fix..."

MISSING_TOOLS=("curl" "wget" "git" "python" "nano")

for tool in "${MISSING_TOOLS[@]}"; do
    if ! command -v $tool &>/dev/null; then
        echo "[!] Missing: $tool. Installing..."
        pkg install -y $tool
    fi
done

echo "[✓] All tools ready!"

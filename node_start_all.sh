#!/bin/bash
echo "=== PROJECT OVERPASS: SYSTEM STARTUP ==="

# 1. Mount Check (Safety first)
if ! mountpoint -q /mnt/warehouse || ! mountpoint -q /mnt/bitcoin-vault; then
    echo "ERROR: Storage drives not mounted. Run 'sudo mount -a' first."
    exit 1
fi

# 2. Start Bitcoin (Slower startup, let it begin first)
sudo systemctl start bitcoind
echo "Bitcoin Core: Starting..."

# 3. Start Ethereum
sudo systemctl start geth
echo "Ethereum Geth: Starting..."

# 4. Start Algorand
sudo systemctl start algorand
echo "Algorand: Starting..."

echo "--------------------------------------"
echo "All services signaled. Run 'pulse' in 60s to check heights."

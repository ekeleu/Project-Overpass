#!/bin/bash
echo "Initiating Graceful Shutdown of Project Overpass..."

# 1. Stop Algorand (Fastest)
sudo systemctl stop algorand
echo "Algorand Stopped."

# 2. Stop Ethereum (Needs time to flush cache to NVMe)
sudo systemctl stop geth
echo "Ethereum Stopped."

# 3. Stop Bitcoin (Slowest - flushes UTXO set to SSD)
bitcoin-core.cli -datadir=/mnt/bitcoin-vault/bitcoin stop
echo "Bitcoin Shutdown Initiated (this may take a minute)..."

# Wait for Bitcoin to fully exit
while pgrep -x "bitcoind" > /dev/null; do sleep 2; done
echo "All nodes offline. Safe to unmount drives or reboot."

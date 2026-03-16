#!/bin/bash
echo "=== PROJECT OVERPASS: NODE PULSE ==="

# 1. Bitcoin Status
BTC_BLOCKS=$(bitcoin-core.cli -datadir=/mnt/bitcoin-vault/bitcoin getblockchaininfo 2>/dev/null | jq .blocks || echo "OFFLINE")
echo "Bitcoin Height: $BTC_BLOCKS"

# 2. Ethereum Status
ETH_BLOCKS=$(curl -s -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' http://localhost:8545 | jq -r .result 2>/dev/null || echo "OFFLINE")
echo "Ethereum Height (Hex): $ETH_BLOCKS"

# 3. Algorand Status
ALGO_STATUS=$(goal node status -d /mnt/warehouse/algorand-node/data 2>/dev/null | grep "Last committed block" | awk '{print $4}' || echo "OFFLINE")
echo "Algorand Height: $ALGO_STATUS"

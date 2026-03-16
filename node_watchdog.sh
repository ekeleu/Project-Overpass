#!/bin/bash
# Threshold for alert
GAP_LIMIT=100

# 1. Bitcoin Check
LOCAL_BTC=$(bitcoin-core.cli -datadir=/mnt/bitcoin-vault/bitcoin getblockchaininfo 2>/dev/null | jq .blocks)
REMOTE_BTC=$(curl -s https://blockchain.info/q/getblockcount)
BTC_GAP=$((REMOTE_BTC - LOCAL_BTC))

if [ "$BTC_GAP" -gt "$GAP_LIMIT" ]; then
    echo "$(date): ALERT - Bitcoin is $BTC_GAP blocks behind!" >> ~/Project-Overpass/watchdog.log
fi

# 2. Algorand Check
LOCAL_ALGO=$(goal node status -d /mnt/warehouse/algorand-node/data 2>/dev/null | grep "Last committed block" | awk '{print $4}')
REMOTE_ALGO=$(curl -s https://mainnet-api.algonode.cloud/v2/status | jq -r '.["last-round"]')
ALGO_GAP=$((REMOTE_ALGO - LOCAL_ALGO))

if [ "$ALGO_GAP" -gt "$GAP_LIMIT" ]; then
    echo "$(date): ALERT - Algorand is $ALGO_GAP rounds behind!" >> ~/Project-Overpass/watchdog.log
fi

echo "$(date): Watchdog check complete. BTC Gap: $BTC_GAP, ALGO Gap: $ALGO_GAP" >> ~/Project-Overpass/watchdog.log

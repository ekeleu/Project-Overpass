#!/bin/bash
# Overpass-Watchdog: Latency & Peer Monitoring
# Author: ekeleu

LOGFILE="$HOME/overpass_health.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# 1. Check Geth Heal
HEAL=$(geth --datadir /mnt/warehouse/ethereum attach --exec "eth.syncing.healedTrienodes" 2>/dev/null || echo "OFFLINE")

# 2. Check Lighthouse Peers
PEERS=$(curl -s http://localhost:5052/eth/v1/node/peers | grep -c "connected" || echo "0")

# 3. Log results
echo "[$DATE] Geth Heal: $HEAL | LH Peers: $PEERS" >> $LOGFILE

# 4. Alert if Peers are critical
if [ "$PEERS" -lt 5 ]; then
    echo "[$DATE] ALERT: Peer count dropped to $PEERS. Checking Tailscale..." >> $LOGFILE
    tailscale status >> $LOGFILE
fi

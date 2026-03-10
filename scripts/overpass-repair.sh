#!/bin/bash
# Tactical CGNAT Bypass for Geth 
# Author: ekeleu

set -e
TS_IP=$(tailscale ip -4)

if [ -z "$TS_IP" ]; then
    echo "Tailscale not found. Install Tailscale to proceed."
    exit 1
fi

sudo mkdir -p /etc/systemd/system/geth.service.d/
cat <<EOT | sudo tee /etc/systemd/system/geth.service.d/override.conf
[Service]
ExecStart=
ExecStart=/usr/bin/geth \\
  --datadir /mnt/warehouse/ethereum \\
  --discovery.v5 \\
  --nat extip:$TS_IP \\
  --port 30303 \\
  --maxpeers 50 \\
  --cache 8192
EOT

sudo systemctl daemon-reload && sudo systemctl restart geth
echo "Bypass Active. Monitoring peers..."
watch -n 5 "geth --datadir /mnt/warehouse/ethereum attach --exec 'net.peerCount'"

# Consensus Layer Auto-Recovery
LH_PEERS=$(curl -s http://localhost:5052/eth/v1/node/peers | grep -c "connected" || echo "0")
if [ "$LH_PEERS" -lt 5 ]; then
    echo "[!] Consensus peers low ($LH_PEERS). Cycling Lighthouse..."
    sudo systemctl restart lighthouse
fi

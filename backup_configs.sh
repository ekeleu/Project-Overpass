#!/bin/bash
BACKUP_DIR="$HOME/Project-Overpass/backups/$(date +%Y-%m-%d)"
mkdir -p "$BACKUP_DIR"

# 1. Bitcoin Configs (from SSD)
cp /mnt/bitcoin-vault/bitcoin/bitcoin.conf $BACKUP_DIR/

# 2. Systemd Services (The Automation Logic)
cp /etc/systemd/system/algorand.service $BACKUP_DIR/
cp /etc/systemd/system/bitcoind.service $BACKUP_DIR/

# 3. Pulse Script
cp ~/Project-Overpass/node_pulse.sh $BACKUP_DIR/

echo "Backup completed to $BACKUP_DIR"

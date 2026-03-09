# Migration to Dell Precision 5820
1. Stop Geth: `sudo systemctl stop geth`
2. Swap NVMe to Dell 5820 PCIe slot.
3. Mount: `sudo mount /dev/nvme0n1p2 /mnt/warehouse`
4. Re-auth Tailscale and restart service.

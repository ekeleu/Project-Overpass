## 🚦 Project Status: ETH Suspended / BTC Active
- **ETH Node:** Suspended at ~13M trienodes due to CGNAT peering issues.
- **BTC Node:** Re-activated. External 1TB SSD verified at Block 936K+.
- **Next Milestone:** Ensure 24h stable uptime on BTC before re-evaluating ETH VPS sentry.
### 📦 Hardware Sync: BTC SSD Restored
- **Status:** 1TB SSD re-mounted to /mnt/warehouse.
- **Action:** Permission fix applied; bitcoind service restarted.
### 🗺️ Hardware Mapping
- **NVMe (1.9T):** /mnt/warehouse (ETH Data - Suspended)
- **SSD (1TB):** /mnt/blockchain-vault (BTC Data - Active)
### 📈 BTC Sync Status
- **Current Block:** 343,473
- **Network Headers:** 940,242
- **Storage:** Successfully verified on /mnt/blockchain-vault.
### 🏎️ Sync Performance
- **Current Era:** April 2015
- **BPM:** High (Processing small legacy blocks).
- **Optimization:** Increasing dbcache to 8000 for IBD acceleration.
### 🚀 Hardware Optimization Applied
- **Action:** Increased dbcache to 8000MiB.
- **Status:** Transitioned from June 2015 data; IBD speed significantly improved.
### 📅 Sync Log: July 2015 Reached
- **Block Height:** 367,148
- **Rate:** ~15 blocks/sec
- **Memory:** Cache growing steadily; 8GB headroom available.

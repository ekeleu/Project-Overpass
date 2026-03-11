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
### 🔍 Local Data Verification
- **Network Usage:** 0 bps (Confirmed local validation).
- **Validation Source:** 1TB SSD (/mnt/blockchain-vault).
- **System Performance:** 32GB RAM utilized for chainstate reconstruction.
### 🔍 Validation Phase
- **Observation:** Progress percentage reflects transaction density, not block count.
- **Status:** Re-validating 2015 era data on 32GB RAM system.
- **Goal:** Maintain uptime to cross the 2017 SegWit weight barrier.
### 🔍 Local Data Verification
- **Network Usage:** 0 bps (Confirmed local validation).
- **Validation Source:** 1TB SSD (/mnt/blockchain-vault).
- **System Performance:** 32GB RAM utilized for chainstate reconstruction.
### 📈 Verification Milestone
- **Current Verification:** 6.79%
- **Mode:** Local I/O (No bandwidth consumed).
- **Infrastructure:** 32GB RAM handling UTXO cache efficiently.
### 🌐 Networking Audit
- **Peers:** 9 (Outbound).
- **NAT Type:** CGNAT (Three UK).
- **Status:** Port 8333 closed for inbound, but IBD unhindered by outbound connections.

## 🏁 Future Roadmap
- **BTC:** Transition to Tor Onion once IBD hits 100% for LND support.
- **ETH:** Deploy VPS Sentry with Static IPv4 to bridge DiscV5/UDP traffic.
- **Reasoning:** Tor latency is acceptable for 10-min BTC blocks, but too slow for 12-sec ETH slots.
### 🔍 Validation Phase
- **Observation:** Progress percentage reflects transaction density, not block count.
- **Status:** Re-validating 2015 era data on 32GB RAM system.
- **Goal:** Maintain uptime to cross the 2017 SegWit weight barrier.
### 📅 Sync Log: July 2015 Reached
- **Block Height:** 367,148
- **Rate:** ~15 blocks/sec
- **Memory:** Cache growing steadily; 8GB headroom available.
### 🔍 Validation Phase
- **Observation:** Progress percentage reflects transaction density, not block count.
- **Status:** Re-validating 2015 era data on 32GB RAM system.
- **Goal:** Maintain uptime to cross the 2017 SegWit weight barrier.
### 🔍 Local Data Verification
- **Network Usage:** 0 bps (Confirmed local validation).
- **Validation Source:** 1TB SSD (/mnt/blockchain-vault).
- **System Performance:** 32GB RAM utilized for chainstate reconstruction.
### 📈 Verification Milestone
- **Current Verification:** 6.79%
- **Mode:** Local I/O (No bandwidth consumed).
- **Infrastructure:** 32GB RAM handling UTXO cache efficiently.
### 🌐 Networking Audit
- **Peers:** 9 (Outbound).
- **NAT Type:** CGNAT (Three UK).
- **Status:** Port 8333 closed for inbound, but IBD unhindered by outbound connections.

## 🏁 Future Roadmap
- **BTC:** Transition to Tor Onion once IBD hits 100% for LND support.
- **ETH:** Deploy VPS Sentry with Static IPv4 to bridge DiscV5/UDP traffic.
- **Reasoning:** Tor latency is acceptable for 10-min BTC blocks, but too slow for 12-sec ETH slots.
### 🛡️ Privacy & NAT Traversal
- **Tor Service:** Installed and configured for ControlPort 9051.
- **Bitcoin Config:** Prepared for .onion address generation.
- **Benefit:** Bypasses CGNAT for inbound LND/BTC traffic.

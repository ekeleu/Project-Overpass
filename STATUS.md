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
### 🌐 Bitcoin Config: Tor Hybrid Mode
- **Network:** IPv4 Outbound + Tor Hidden Service (Inbound).
- **Services:** RPC active, dbcache 8000, txindex enabled.
- **NAT Bypass:** Verified via Tor Control Port 9051.
### 🌐 Networking: IPv6 Active / Tor Pending
- **IPv6:** Successfully discovered multiple local addresses.
- **Tor Status:** Pending handshake on Port 9051.
### 🧅 Tor Hidden Service Active
- **Onion Address:** ykxsc3wzg3qpbz5wj47wprbphtojsvhy7c66r4rvjm33s4egppbe2wad.onion
- **Status:** Authentication successful via SAFECOOKIE.
- **NAT Bypass:** Confirmed. Node is now reachable despite CGNAT.
### ✅ Connectivity Verified
- **Tor Score:** 4 (Confirmed reachable).
- **Inbound Traffic:** Ready for LND / Electrum / Mobile Wallet pairing.
### 📱 Remote Access
- **Method:** Tor Onion V3 QR Code generated.
- **Integration:** Ready for Sparrow/Zeus wallet pairing.

## ✅ Session Summary (2026-03-11)
- **BTC Verification:** Passing 7% (Era: Late 2015).
- **Network:** Tor Onion V3 Active & Reachable (Score 4).
- **Storage:** 1TB SSD mounted successfully at /mnt/blockchain-vault.
- **Next Goal:** Monitor IBD until 100% and then link mobile wallet.
### 🖥️ Local Infrastructure
- **Node Local IP:** 192.168.0.146
- **Dashboard Access:** http://192.168.0.146:3000

## 📡 Management Endpoints
- **Grafana (Tailscale):** http://100.125.225.70:3000
- **Grafana (Local):** http://192.168.0.146:3000
- **SSH Access:** nodeadmin@100.125.225.70
### ⚙️ Performance Tuning
- **Issue:** RPC Timeouts during IBD/txindexing.
- **Fix:** Increased rpcworkqueue and rpcthreads; slowed Grafana scrape rate to 60s.
- **Config Update:** Increased RPC threads and workqueue for stability.
## 🏆 Milestone: 22% Reached
- **Current Block:** 518,525 (April 2018 era).
- **Status:** IBD is accelerating; hardware handling SegWit data well.
### ❄️ Thermal Audit
- **CPU Temp:** 44°C (Package id 0)
- **Storage Temp:** 32°C (NVMe Composite)
- **Fan Speed:** ~2000 RPM (Stable cooling)
### ⚠️ Sync Regression Incident
- **Issue:** Loss of sync state after unmount; node performing full re-scan/index.
- **Root Cause:** Likely txindex rebuild or dirty chainstate flush.
- **Mitigation:** Strict 'bitcoin-cli stop' protocol before any hardware changes.
### 🚀 Performance: Turbo Mode
- **Action:** Increased dbcache to 12288 (12GB) to mitigate re-index time.
- **Strategy:** Prioritizing Bitcoin validation while ETH is dormant.
### 🔭 Infrastructure Strategy
- **Concept:** Implementing Prometheus/Grafana as a 'Single Pane of Glass'.
- **Goal:** Move from reactive terminal checks to proactive dashboard monitoring post-IBD.
## 📊 Health Check Update
- **Timestamp:** Wed 11 Mar 22:43:24 GMT 2026
- **Estimated Completion:** March 24, 2026
- **Hardware Status:** Thermal 45°C | Fan 2050 RPM
### 🔭 Monitoring Phase: Active
- **Action:** Resumed Grafana/Prometheus for visual audit of 2019 data era.
- **Observed Load:** Checking for thermal impact of the 'Single Pane' stack.
### 📊 Monitoring Active & Stable
- **Log:** Monitoring stack re-enabled. No thermal impact observed.
- **Current CPU:** 40°C | Current NVMe: 32.9°C
## 🏆 Milestone: 73% Crossed
- **Current Date in Ledger:** June 2024
- **Total Transactions Verified:** 1.02 Billion
- **Hardware Performance:** Cache and Thermals holding steady.
## ✅ Project Overpass: BTC Node Live
- **Final Block:** 940,498
- **Network State:** Fully Synced / Hidden Service Active.
- **Transition:** Ethereum infrastructure migrated to Bitcoin Core.

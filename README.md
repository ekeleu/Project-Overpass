# Project Overpass: Ethereum Node (Three UK CGNAT Bypass)

## 🏗️ Architecture
- **Execution:** Geth (Mainnet)
- **Consensus:** Lighthouse (Mainnet)
- **Network:** Three UK 5G (CGNAT) -> Tailscale IPv6 Tunnel -> Public Discovery
- **Hardware:** Intel NUC (Current) / Dell Precision 5820 (Target)

## 🔧 Technical Stack
- **OS:** Ubuntu 22.04 LTS
- **Networking:** Tailscale (WireGuard) for ENR reachability
- **P2P Ports:** 30303 (Geth), 9001 (Lighthouse)

## 📊 Performance
- **Lighthouse Peers:** 50+ (via Port 9001/UDP bypass)
- **Status:** State Healing (Execution) / Synced (Consensus)
### 🛠️ Fix: Removed deprecated --discovery-quick-query
### 🚀 Status: Sync Resumed
- **Network Layer:** Successfully bypassed CGNAT via internal bootnodes.
- **Peers:** Stable at 2+ (Execution Layer).

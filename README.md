# Souei (Homelab Compute Node)

This repository tracks the configuration for **Souei**, the compute-heavy secondary node in my homelab architecture. Souei exists to offload CPU/RAM-heavy workloads away from my primary node, [Tempest](https://github.com/jkibort928/tempest-homelab).

### Hardware Setup
Like Tempest, Souei is a headless "slabtop". I acquired an **Acemagic LX15PRO** with a cracked LCD on an eBay auction for under $100, stripped the broken screen panel off entirely, and repasted the CPU with PTM-7950 to keep things quiet.
* **CPU:** AMD Ryzen 5 7430u (6 Cores / 12 Threads)
* **RAM:** 16GB DDR4
* **Storage:** 512GB NVMe

### Architecture & Workloads
* **Host Operating System:** Fedora IoT (Atomic/Immutable Linux).
* **Immich Deployment:** Because Immich's background machine learning, facial recognition, and clip encoding throttle the dual-core i3 on Tempest, Souei acts as the dedicated host for the Immich ecosystem (`immich-server`, `immich-ml`, `immich-db`).

# lab-infrastructure
Ce repo a pour but de documenter 1 infrastructure multi serveur et les technologies mises en place pour mettre à disposition différents services afin de créer un pipeline complet CI/CD open source. 

## Technology Stack

### Virtualization & Container Orchestration
- **Hypervisor**: Proxmox VE
- **Container Orchestration**: 
  - Kubernetes cluster
  - Multiple worker nodes configuration
  - Custom networking setup

### Networking
- **VPN Solution**: WireGuard for inter-server communication
- **Network Segmentation**:
  - DMZ network for web-facing services
  - Internal networks for secure communications
  - Multiple virtual bridges (vmbr0-4) for different network purposes
- **IP Management**:
  - IPv4 and IPv6 support
  - NAT and port forwarding configurations
  - Multiple subnet ranges (192.168.200.0/24, 10.0.1.0/24, 10.8.0.0/24)

### Source Control & CI/CD
- **Version Control**: Gitea (self-hosted)
- **Container Registry**: Harbor (self-hosted)

### Databases
- **Relational Database**: PostgreSQL

### Security
- **Access Control**: 
  - Bastion host architecture
  - SSH key-based authentication
  - Network isolation through VLANs
- **Firewall**: 
  - iptables rules
  - Port-based access control
  - Selective exposure of services

### Infrastructure
- **Server Distribution**:
  - Server-1: Primary Kubernetes cluster
  - Server-2: Development tools and databases
- **Resource Management**:
  - Dedicated VM resources allocation
  - Memory and CPU management
  - Storage management through Proxmox

### Domain & DNS
- Domain management for acmgroup.tech and subdomains
- Multiple DNS providers (8.8.8.8, 1.1.1.1)
- Internal DNS infrastructure (planned)

## Infrastructure Overview

The infrastructure is distributed across two main servers:

### Server-1 (2 public IP - 1 web-facing, 1 admin)
- Primary Kubernetes infrastructure
- Web-facing services
- Load balancing and routing (Traefik)

### Server-2 (1 public IP)
- Development tools (Gitea)
- Container registry (Harbor)
- Database services (PostgreSQL)
- Internal services

The servers are interconnected via WireGuard VPN, ensuring secure communication between different network segments and services.

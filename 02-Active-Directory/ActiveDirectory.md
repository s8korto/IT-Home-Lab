# Active Directory 

## Objective

Install Active Directory Domain Services (AD DS) on Windows Server 2022 and promote the server to a Domain Controller by creating a new Active Directory forest. Verify that Active Directory is functioning correctly and ready for managing users, computers, and domain resources.

---

## Lab Environment

**Host Operating System**
- macOS (Intel)

**Hypervisor**
- VirtualBox 7.x

**Guest Operating System**
- Windows Server 2022 Standard (Desktop Experience)

**Server Name**
- DC01

**Domain Name**
- homelab.local

**Network Configuration**
- IP Address: 192.168.56.10
- Subnet Mask: 255.255.255.0
- Default Gateway: (leave blank for Host-Only Network)
- Preferred DNS Server: 192.168.56.10 (configured after AD DS installation)

**Server Roles Installed**
- Active Directory Domain Services (AD DS)
- DNS Server

---

## Prerequisites

Before installing Active Directory Domain Services, ensure the following requirements have been completed:

- Windows Server 2022 has been successfully installed.
- The server has been assigned a static IP address.
- The server has been renamed (recommended: DC01).
- Initial server configuration has been completed.
- Administrator account is available for installation.
- The server is connected to the Host-Only network.
- Windows Server is fully booted and accessible through Server Manager.

---

## Installation Steps


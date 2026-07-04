# Active Directory 

## Overview 

In this section I installed Active Directory Domain Services (AD DS) and promoted the Windows Server to a Domain Controller

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

### 1. Open the Add Roles and Features Wizard

Open the Add Roles and Features Wizard from Server Manager to begin installing the Active Directory Domain Services (AD DS) role. 

**Instructions**

1. Open Server Manager.
2. Click Manage in the upper-right corner.
3. Select Add Roles and Features.

![Server Manager](screenshots/01-server-manager.png)

**why?**

The Add Roles and Features Wizard is used to install Windows Server roles and features. In this lab, it is used to install Active Directory Domain Services (AD DS), which is required before the server can be promoted to a Domain Controller.

---

### 2. Select the Installation Type 

Select Role-based or feature-based installation.

![Add Role](screenshots/02-add-roles.png)

**why** 

The Role-based or feature-based installation option is used when installing server roles and features on a Windows Server. It allows roles such as:

- Active Directory Domain Services (AD DS)
- DNS Server
- DHCP Server
- Web Server (IIS)

In this lab, it is used to install the Active Directory Domain Services (AD DS) role.

---

## 3. Select the Destination Server

Select the local server that will host the Active Directory Domain Services (AD DS) role, then click Next. 

![Select Server](screenshots/03-select-server.png)

**why?**

The destination server specifies where the Active Directory Domain Services (AD DS) role will be installed. In this lab, the local Windows Server is selected because it will later be promoted to the Domain Controller for the network.

---

## 4. Select Server Roles

Select Active Directory Domain Services, then click Add Features when prompted.


![Select AD-DS](screenshots/04-select-ad-ds.png)

---

## 5. Install Active Directory Domain Services 

Begin the installation of the Active Directory Domain Services (AD DS) role.

**Instructions**

1. Review the installation summary.
2. Confirm that Active Directory Domain Services is listed.
3. Click Install.
4. Wait for the installation to complete.

![Install](screenshots/05-install.png)











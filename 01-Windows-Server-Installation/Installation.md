# Windows Server 2022 Installation

## Objective
Install Windows Server 2022 in a virtual machine and perform the initial configuration.

---

## Prerequisites

Before creating the virtual machine, I downloaded the following software:

| Software | Purpose |
|----------|---------|
| VirtualBox 7.x | Virtualization platform |
| Windows Server 2022 Evaluation ISO | Operating system installation media |


### Download Sources

- VirtualBox 7.x : https://www.virtualbox.org/wiki/Downloads
- Windows Server 2022 Evaluation: https://www.microsoft.com/evalcenter

---

## Installation Steps

### 1. Created Virtual Machine

Configured a new VirtualBox VM with 4 GB RAM, 2 CPUs and a 50 GB virtual hard disk.

![VM](screenshots/01-vm-created.png)

---

### 2. Attached Windows Server ISO

Mounted the Windows Server 2022 ISO and booted the virtual machine.

![ISO](screenshots/02-windows-server-iso.png)

---

### 3. Installed Windows Server

Selected Windows Server 2022 Standard (Desktop Experience) and completed the installation.

![Install](screenshots/03-installing-windows.png)

---

### 4. Initial Configuration

- Set Administrator password
- Logged into Windows


![Set Administrator](screenshots/04-set-administrator.png)


- Verified Server Manager launched successfully

![Server Manager](screenshots/05-server-manager.png)

---

### 5. Renamed Server

Renamed the computer to **DC01** and restarted.

![Rename](screenshots/06-computer-name.png)

---

### 5. Set Time Zone 

Configured the correct system time zone

![Time Zone](screenshots/07-time-zone.png)

---

### 6. Configured VirtualBox Network

Set VirtualBox Network to Host-only Network.

![Configure Network](screenshots/08-configure-network.png)

---

### 7. Configured a Static IP Address

Configured a static IPv4 address for future Active Directory deployment.

- IP Address: 192.168.56.10
- Subnet Mask: 255.255.255.0
- Gateway: blank
- DNS Server: 8.8.8.8

![Configure Static IP](screenshots/09-static-ip.png)

---

## Validation

Verified:

- Windows Server installed successfully
- Server Manager operational
- Hostname changed to DC01
- Static IP configured correctly

![Final](screenshots/09-final-server.png)

## Skills Demonstrated

- Windows Server installation
- Virtual machine provisioning
- Initial server configuration
- Static IP networking
- Server administration


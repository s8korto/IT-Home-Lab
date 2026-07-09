# Troubleshooting

## Objective 

This document outlines the troubleshooting scenarios I encountered while building my Windows Server home lab. Each scenario describes the issue, how I investigated it, the solution, and how I verified the fix.

---

# Scenario 1 – Unable to Ping the Domain Controller

## Issue

The Windows 11 client could not communicate with the Domain Controller (`DC01`). As a result, I was unable to continue with tasks such as joining the domain.

## Investigation

I performed the following checks:

- Verified the IP configuration on both the server and client. 

```powershell 
ipconfig /all 
```

- Confirmed both virtual machines were using the same **Host-Only Adapter**. 
- Verified both machines were on the same subnet. 
- Reviewed the VirtualBox network adapter settings.

## Resolution

I corrected the VirtualBox network adapter configuration so that both virtual machines shared the same Host-Only network.

## Verification

```powershell 
ping 192.168.56.10 
```

**Result** 

- Successful replies from the Domain Controller.
- Network communication between the client and server was restored.

---

# Scenario 2 – Domain Join Failed

## Issue

The Windows 11 client was unable to join the `homelab.local` domain.

## Investigation 

I completed the following checks: 

- Verified network connectivity. 

```powershell 
ping 192.168.56.10 
```

- Reviewed the client's network configuration. 

```powershell 
ipconfig /all 
``` 

- Checked the configured DNS server. 
- Confirmed that **Active Directory Domain Services (AD DS)** and **DNS Server** were installed and running on the Domain Controller.

## Resolution

The client was configured to use an incorrect DNS server. I updated the Preferred DNS Server to the Domain Controller's IP address.

```text 
Preferred DNS Server: 192.168.56.10 
```

## Verification

- Successfully joined `homelab.local`.
- Restarted the client.
- Logged in using a domain account.
- Confirmed the computer appeared in **Active Directory Users and Computers**.

---



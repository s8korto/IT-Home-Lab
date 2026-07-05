# Group Policy

## Objective

Configure and test Group Policy Objects (GPOs) in a Windows Server 2022 Active Directory environment to centrally manage user and computer settings across domain-joined devices.

---

## Lab Environment

**Domain Controller**
- Windows Server 2022
- Active Directory Domain Services
- Domain: homelab.local

**Client**
- Windows 10
- Joined to the homelab.local domain

---

## Prerequisites

Before starting, ensure the following are configured:

- Windows Server 2022 is installed and running.
- The server has been promoted to a Domain Controller with Active Directory Domain Services (AD DS).
- A Windows 10 client is joined to the Active Directory domain.
- A test user account exists for validating user policies.
- A test Organizational Unit (OU) exists for linking Group Policy Objects.

---

## What You'll Build

In this lab, you'll create and deploy a Group Policy Object (GPO) that:

- Changes the desktop wallpaper
- Prevents access to Control Panel
- Links the GPO to an Organizational Unit (OU)
- Forces a Group Policy update
- Verifies the policy is applied on a domain-joined Windows 10 client

This lab demonstrates the complete Group Policy deployment workflow, from creating and linking a GPO to validating that the policy is successfully applied on a client computer.

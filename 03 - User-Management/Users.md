# User Management

## Objective

Create and manage Active Directory users, Organizational Units (OUs), and security groups in Windows Server 2022. Configure common account settings and organize directory objects using a structured Active Directory environment.

---

## Lab Environment

**Server**
- Windows Server 2022
- Active Directory Domain Services installed
- Domain Controller

**Tools**
- Active Directory Users and Computers (ADUC)

---

## Prerequisites

- Windows Server installed
- Active Directory configured
- Domain Controller running
- Administrator account

--- 

## Steps

### 1. Create an Organizational Unit (OU)

Instead of storing users in the default **Users** container, create an Organizational Unit (OU) to organize accounts by department or function.

1. Right-click your domain (e.g., **homelab.local**).
2. Select **New** → **Organizational Unit**.
3. Enter **IT** as the name.
4. Click **OK**.

![First OU](screenshots/01-first-ou.png)

**Key Idea**

Organizational Units (OUs) provide a logical way to organize Active Directory objects. They simplify administration, allow Group Policies to be applied to specific departments, and make user management easier than storing all accounts in the default Users container.

---

### 2. Create Another Organizational Unit (OU)

Create another Organizational Unit (OU) to represent a different department.

For this lab, create an OU named **HR** by repeating the same steps as before.

1. Right-click your domain (e.g., **homelab.local**).
2. Select **New** → **Organizational Unit**.
3. Enter **HR** as the name.
4. Click **OK**.

![Second OU](screenshots/02-second-ou.png)

**Key Idea**

Creating separate OUs for different departments helps organize Active Directory objects and allows administrators to apply different Group Policy settings and permissions to each department independently.

---

### 3. Create a User Account

Create a new user account within the **IT** Organizational Unit (OU).

1. Right-click the **IT** OU.
2. Select **New** → **User**.
3. Enter the following information:
   - **First name:** John
   - **Last name:** Smith
   - **User logon name:** jsmith
4. Click **Next**.

![Create New User](screenshots/03-new-user.png)

---

### 4. Configure the User Password

1. Enter a password for the new user.
2. Leave **User must change password at next logon** unchecked.
3. Click **Next**, then **Finish**.

![Configure Password](screenshots/04-user-password.png)

---






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

## Steps

### 1. Open Group Policy Management

Group Policy is managed through the **Group Policy Management Console** on the Domain Controller.

1. Open **Server Manager**.
2. Select **Tools** → **Group Policy Management**.
3. Expand **Forest** → **Domains** → **homelab.local**.

![Open Group Policy Management](screenshots/01-open-group-policy.png)

---

### 2. Create a Group Policy Object (GPO)

Create a new Group Policy Object (GPO) that will contain the settings you want to apply to users.

1. Expand **Forest** → **Domains** → **homelab.local**.
2. Right-click **Group Policy Objects**.
3. Select **New**.
4. Enter **IT User Policy** as the name.
5. Click **OK**.

![Create Group Policy Object](screenshots/02-create-gpo.png)

---

### 3. Edit the Group Policy Object (GPO)

Open the Group Policy Management Editor to configure the settings that will be applied through the Group Policy Object (GPO).

1. Right-click **IT User Policy**.
2. Select **Edit**.
3. The **Group Policy Management Editor** opens.

![Edit Group Policy Object](screenshots/03-edit-gpo.png)

---

### 4. Prevent Access to Control Panel

Configure a Group Policy setting to prevent users from accessing **Control Panel** and **PC Settings**.

1. Navigate to **User Configuration** → **Administrative Templates** → **Control Panel**.
2. Double-click **Prohibit access to Control Panel and PC settings**.
3. Select **Enabled**.
4. Click **Apply**.
5. Click **OK**.

![Disable Control Panel](screenshots/04-disable-control-panel.png)

---




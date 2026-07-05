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
- Windows 11
- Joined to the homelab.local domain

---

## Prerequisites

Before starting, ensure the following are configured:

- Windows Server 2022 is installed and running.
- The server has been promoted to a Domain Controller with Active Directory Domain Services (AD DS).
- A Windows 11 client is joined to the Active Directory domain.
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

### 5. Configure a Desktop Wallpaper

Configure a Group Policy setting to apply a standard desktop wallpaper to all users.

1. Navigate to **User Configuration** → **Administrative Templates** → **Desktop** → **Desktop**.
2. Double-click **Desktop Wallpaper**.
3. Select **Enabled**.
4. Enter the network path to the wallpaper image (for example, `\\Server\Wallpaper\company.jpg`).
5. Click **Apply**.
6. Click **OK**.

---

### 6. Link the Group Policy Object (GPO)

Link the Group Policy Object (GPO) to the **IT** Organizational Unit (OU) so the policy is applied to users within that OU.

1. Return to **Group Policy Management**.
2. Expand your domain and locate the **IT** Organizational Unit (OU).
3. Right-click **IT**.
4. Select **Link an Existing GPO**.
5. Choose **IT User Policy**.
6. Click **OK**.

![Link Group Policy Object](screenshots/06-link-gpo.png)

**Key Idea**

A Group Policy Object (GPO) has no effect until it is linked to a site, domain, or Organizational Unit (OU). Linking the GPO to the **IT** OU ensures that only users and computers within that OU receive the configured policy settings, allowing administrators to target policies to specific departments or groups.

---

### 7. Verify the Group Policy Link

Confirm that the Group Policy Object (GPO) is successfully linked to the **IT** Organizational Unit (OU).

1. In **Group Policy Management**, select the **IT** Organizational Unit (OU).
2. Verify that **IT User Policy** appears under **Linked Group Policy Objects**.

![Linked Group Policy](screenshots/07-linked-policy.png)

---

### 8. Sign In to the Windows 11 Client

Sign in to the domain-joined Windows 11 client using the test domain user account.

1. Start the Windows 11 client.
2. At the sign-in screen, select **Other user** (if required).
3. Sign in using your domain user account (for example, **jsmith**).

![Sign In to Windows 11](screenshots/08-login-client.png)

**why**

Signing in with a domain user account allows Windows to retrieve and apply any Group Policy settings assigned to that user. This ensures the user receives the centrally managed configurations defined by the linked Group Policy Object (GPO).

---







# Hybrid-Active-Directory-Infrastructure-Deployment

## Overview
A hands-on lab project that demonstrates deploying and managing a Hybrid Active Directory environment using Proxmox, Windows Server 2022, and Azure AD (Microsoft Entra ID). This setup simulates a real-world enterprise identity solution by combining on-premises AD with cloud identity services for hybrid identity, device join, and policy management.

## Design Overview

![n/a]()

## Features
 - **Proxmox Virtualization**
    - Hosted a Windows Server 2022 VM on Proxmox VE.
    - Configured Active Directory Domain Servers (AD DS), DNS, and DHCP.
- **Active Directory Management**
    - Created and managed users, groups, file shares, and organizational units (OUs).
    - Applied Group Policy Objects (GPOs) for password policies and mapped drives.
- **Hybrid Identity with Azure AD**
    - Integrated on-prem AD with Azure AD (Microsoft Entra ID) using Azure AD Connect.
    - Enabled Hybrid Join for Windows devices.
    - Configured cloud sync and Intune enrollment for policy and compliance management.

## Getting Started

### Prerequisites
 - Proxmox VE installed on bare-metal hardware or nested virtualization.
 - Windows Server 2022 ISO.
 - Azure subscription with Entra ID & Intune.
 - Internet connectivity for synchronization.

### Deployment 
    1. **Provision VM on Proxmox**
        - Create a VM with at least 2 vCPUs, 4GB RAM, and 50-60GB storage.
        - Install Windows Server 2022.
    2. **Configure Active Directory**
        -
        -
        -
    3. **Apply Group Policies**
        -
    4. **Integrate with Azure AD**
        -
        -
        -
    5. **Enable Intune Services**
        -
        -

## Tools
 - Proxmox VE
 - Windows Server 2022
 - Azure AD (Microsoft Entra ID)
 - Azure AD Connect
 - Microsoft Intune

## References
 - [Microsoft](https://learn.microsoft.com/en-us/windows-server/)
 -
 -
 -
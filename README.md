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
- **System Hardening**
    - Implemented Microsoft Security Baselines for Windows Server 2022.
    - Applied CIS Microsoft Windows Server 2022 Benchmark.

## Getting Started

### Prerequisites
 - Proxmox VE installed on bare-metal hardware or nested virtualization.
 - Windows Server 2022 ISO.
 - Azure subscription with Entra ID & Intune.
 - Internet connectivity for synchronization.

### Deployment 
1. Provision VM on Proxmox
    - Create a VM with at least 2 vCPUs, 4GB RAM, and 50-60GB storage.
    - Install Windows Server 2022.
2. Configure Active Directory
    - Promote the server to a Domain Controller.
    - Install and configure DNS and DHCP.
    - Create OUs, users, and groups.
3. Apply Group Policies
    - Configure password complexity, lockout policies, and mapped drives.
4. Integrate with Azure AD
    - Install and configure Azure AD Connect.
    - Enable Hybrid Join for devices.
    - Sync identities to Azure AD.
5. Enable Intune Services
    - Configure device compliances and security policies in Intune.
    - Validate hybrid device join and policy enforcement.

## Tools
 - Proxmox VE - Virtualization platform
 - Windows Server 2022 - Active Directory, DNS, DHCP
 - Azure AD (Microsoft Entra ID) - Cloud identity & hybrid sync
 - Azure AD Connect - Identity synchronization
 - Microsoft Intune - Device and compliance management

## References
 - [Microsoft](https://learn.microsoft.com/en-us/docs/)
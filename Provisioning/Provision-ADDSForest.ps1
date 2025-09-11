#Install AD DS Role + Management Tools
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

#Promote to Domain Controller for a New Forest
Import-Module ADDSDeployment
Install-ADDSForest `
-DomainName "" `                    # Your domain FQDN
-DomainNetbiosName "" `             # NetBIOS short name
-DomainMode "Win2022" `             # Version
-ForestMode "Win2022" `             # Version
-CreateDnsDelegation:$false `       # No delegation
-DatabasePath "C:\Windows\NTDS" `   # AD DS database path
-LogPath "C:\Windows\NTDS" `        # AD DS logs
-SysvolPath "C:\Windows\SYSVOL" `   # SYSVOL share
-InstallDns:$true `                 # Install DNS role
-SafeModeAdministratorPassword (Read-Host "Enter DSRM password" -AsSecureString)    # DSRM password
-NoRebootOnCompletion:$true `       # Will reboot when done
-Force:$true                        # Skip confirmation
#Install AD DS Role + Management Tools
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

#Promote to Domain Controller for a New Forest
Install-ADDSForest `
-DomainName "corp.local" `          # Your domain FQDN
-DomainNetbiosName "CORP" `         # NetBIOS short name
-CreateDnsDelegation:$false `       # No delegation
-DatabasePath "C:\Windows\NTDS" `   # AD DS database path
-LogPath "C:\Windows\NTDS" `        # AD DS logs
-SysvolPath "C:\Windows\SYSVOL" `   # SYSVOL share
-InstallDns:$true `                 # Install DNS role
-SafeModeAdministratorPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) # DSRM password
-NoRebootOnCompletion:$false `      # Will reboot when done
-Force:$true                        # Skip confirmation
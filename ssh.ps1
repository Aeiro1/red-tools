Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Start-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'
New-NetFirewallRule -Name "Core Networking - SSH" -Displayname "Core Networking - SSH" -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
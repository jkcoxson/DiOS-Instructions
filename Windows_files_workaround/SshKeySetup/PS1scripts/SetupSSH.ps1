Start-Process powershell -verb runas -ArgumentList "-file fullpathofthescript"
Set-Service sshd -StartupType Automatic
Start-Service sshd

New-NetFirewallRule -Name sshd -DisplayName 'Allow SSH' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22

md ~/.ssh
cd ~/.ssh
ssh-keygen
remove-item ~/.ssh/authorized_keys.pub
echo .
echo .
echo "you will be directed to authorzed keys section..."
echo .
pause
explorer.exe .
explorer.exe C:\ProgramData\ssh

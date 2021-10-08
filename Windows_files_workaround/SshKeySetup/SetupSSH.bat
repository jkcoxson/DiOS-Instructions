
powershell -command "   Start-Process PowerShell -Verb RunAs \""-Command `\""cd '%cd%'; & '%~dp0\PS1scripts\SetupSSH.ps1';`\""\""   "
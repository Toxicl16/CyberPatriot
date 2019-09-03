@echo off
echo Making passwords expire, and setting password to: CyberPatriot1 IMPORTANT
echo Please change the main account password after script
for /f "tokens=*" %%a in ('type %path%resources\users.txt') do (
	net user "%%a" "CyberPatriot1"
	C:\Windows\System32\wbem\wmic UserAccount where Name="%%a" set PasswordExpires=True
)
echo Made passwords expire, and set passwords

@ECHO OFF
TITLE %~n0
SETLOCAL

NMAP -sT -Pn -n 192.168.0.1 -p 389 --script ldap-rootdse

ENDLOCAL

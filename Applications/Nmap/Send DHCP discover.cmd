@ECHO OFF
TITLE %~n0
SETLOCAL

NMAP --script broadcast-dhcp-discover

ENDLOCAL

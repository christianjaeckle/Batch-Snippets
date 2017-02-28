ECHO.Define IP address and subnetmask
NETSH.exe INTERFACE IP SET address name="LAN-Verbindung" source=static addr=10.60.0.51 mask=255.255.255.0

ECHO.Define standard gateway
NETSH.exe INTERFACE IP SET address name="LAN-Verbindung" gateway=10.60.0.1 gwmetric=0

ECHO.Define primary DNS server
NETSH.exe INTERFACE IP SET dns name="LAN-Verbindung" source=static addr=10.60.0.11 register=PRIMARY

ECHO.Define secondary DNS server
ECHO.NETSH INTERFACE IP add dns name="LAN-Verbindung" addr=10.60.0.12 index=2

ECHO.Define WINS server: none
NETSH INTERFACE IP SET wins name="LAN-Verbindung" source=static addr=none

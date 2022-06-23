@ECHO OFF
TITLE %~n0
SETLOCAL

ECHO. Add filter for port 443
PKTMON filter add -p 443

ECHO. Start capturing (list network cards with 'pktmon list')
PKTMON start --capture --comp <Network Interface ID from step 3>

ECHO. Stop capturing
PKTMON stop

ECHO. Convert to pcapng format
PKTMON etl2pcap PktMon.etl

ECHO. Remove filter
PKTMON filter remove

PAUSE

ENDLOCAL

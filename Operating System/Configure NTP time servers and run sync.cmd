ECHO.Stop the service
Net.exe Stop w32time

ECHO Unregister and register again
w32tm /unregister
w32tm /register

ECHO Start the service
Net.exe Start w32time

ECHO Configure the service for working group
w32tm /config /manualpeerlist:"0.de.pool.ntp.org ptbtime1.ptb.de time.windows.com" /syncfromflags:manual /update

ECHO Configure the service for domain
W32TM /config /syncfromflags:%USERDOMAIN% /update

ECHO Run the synchronization
w32tm /resync

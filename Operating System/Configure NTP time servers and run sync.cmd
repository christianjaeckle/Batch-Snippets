ECHO.Stop the service
Net.exe Stop w32time

ECHO.Unregister and register again
w32tm /unregister
w32tm /register

ECHO.Start the service
Net.exe Start w32time

ECHO.Configure the service
w32tm /config /update /manualpeerlist:"de.pool.ntp.org ptbtime1.ptb.de time.windows.com" /syncfromflags:manual

ECHO.Run the synchronization
w32tm /resync

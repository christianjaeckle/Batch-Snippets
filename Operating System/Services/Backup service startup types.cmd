ECHO. Get names of all services
SC query type=service state=all | findstr /r /C:"SERVICE_NAME:" >%userprofile%\Desktop\Services.txt

ECHO. Get startup type per service
FOR /f "tokens=2 delims=:" %%n IN ("%userprofile%\Desktop\Services.txt") DO @( SC qc %%n |findstr  START_TYPE >"%userprofile%\Desktop\Services_StartupType.txt" &&  for /f "tokens=4 delims=:_ " %%s IN ("%userprofile%\Desktop\Services_StartupType.txt") DO @ECHO SC config %%n start= %%s >>"%userprofile%\Desktop\Services2.txt")

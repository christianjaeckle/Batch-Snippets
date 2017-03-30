ECHO. Get names of all services
SC query type=service state=all | findstr /r /C:"SERVICE_NAME:" >"%userprofile%\Desktop\Services.txt"

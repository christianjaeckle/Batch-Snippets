@ECHO OFF
TITLE %~n0
SETLOCAL

:CHOICE
CLS
ECHO.
ECHO 1. Backup
ECHO 2. Restore
ECHO 3. Quit
ECHO.
ECHO.
SET /P c=Type the option number you would like to do, and press Enter?
if /I "%c%" EQU "1" GOTO :VERIFY1
if /I "%c%" EQU "2" GOTO :VERIFY2
if /I "%c%" EQU "3" EXIT
GOTO :CHOICE

:VERIFY1
IF EXIST "%USERPROFILE%\Desktop\Folder View Settings Backup" GOTO :RESPONSE1
goto :backup

:RESPONSE1
ECHO.
ECHO.
ECHO You already have a "Folder View Settings Backup" folder on your desktop.
ECHO Please move it to another location, and try again.
ECHO.
PAUSE
GOTO :CHOICE

:BACKUP
MKDIR "%USERPROFILE%\Desktop\Folder View Settings Backup"

REG EXPORT HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Defaults "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_CurrentVersion_Explorer_Streams_Defaults.reg" /y
REG EXPORT HKCU\Software\Microsoft\Windows\Shell\BagMRU "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_Shell_BagMRU.reg" /y
REG EXPORT HKCU\Software\Microsoft\Windows\Shell\Bags "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_Shell_Bags.reg" /y
REG EXPORT HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_ShellNoRoam_Bags.reg" /y
REG EXPORT HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_ShellNoRoam_BagMRU.reg" /y
REG EXPORT "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Classes_LocalSettings_Software_Microsoft_Windows_Shell_BagMRU.reg" /y
REG EXPORT "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Classes_LocalSettings_Software_Microsoft_Windows_Shell_Bags.reg" /y
CLS
ECHO.
ECHO Backup of folder view settings successfully completed.
ECHO.
PAUSE 
EXIT

:VERIFY2
IF NOT EXIST "%USERPROFILE%\Desktop\Folder View Settings Backup" GOTO :RESPONSE
GOTO :RESTORE

:RESPONSE
ECHO.
ECHO.
ECHO You do not have a "Folder View Settings Backup" folder on your desktop.
ECHO Please place the backup folder on your desktop, and try again.
ECHO.
PAUSE
GOTO :CHOICE

:RESTORE
REG Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Defaults" /F
REG Delete "HKCU\Software\Microsoft\Windows\Shell\BagMRU" /F
REG Delete "HKCU\Software\Microsoft\Windows\Shell\Bags" /F
REG Delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags" /F
REG Delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /F
REG Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
REG Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /F

REG IMPORT "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_CurrentVersion_Explorer_Streams_Defaults.reg"
REG IMPORT "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_Shell_BagMRU.reg"
REG IMPORT "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_Shell_Bags.reg"
REG IMPORT "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_ShellNoRoam_Bags.reg"
REG IMPORT "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Microsoft_Windows_ShellNoRoam_BagMRU.reg"
REG IMPORT "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Classes_LocalSettings_Software_Microsoft_Windows_Shell_BagMRU.reg"
REG IMPORT "%USERPROFILE%\Desktop\Folder View Settings Backup\HKCU_Software_Classes_LocalSettings_Software_Microsoft_Windows_Shell_Bags.reg"
CLS
ECHO.
ECHO Backup of folder view settings successfully restored.
ECHO.
ECHO Waiting to restart explorer to apply.
ECHO Your screen will flash as explorer is restarted.
ECHO.
ECHO.
PAUSE
TASKKILL /f /im explorer.exe
START explorer.exe 
EXIT

ENDLOCAL

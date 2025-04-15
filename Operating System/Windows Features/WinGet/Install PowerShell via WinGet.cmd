@ECHO OFF
TITLE %~n0
CLS

REM Install Powershell 7 via WinGet
Winget install --id Microsoft.PowerShell --architecture x64 --scope machine --silent

REM Install Powershell 7 via WinGet with custom configuration
Winget install --id Microsoft.PowerShell --architecture x64 --scope machine --silent --custom "Use_MU=1 Enable_MU=1 ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=0 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=0 ENABLE_PSREMOTING=1 ADD_PATH=1 DISABLE_TELEMETRY=1"

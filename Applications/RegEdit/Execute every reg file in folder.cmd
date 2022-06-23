FOR /R "%~dp0" %%i in (*.reg) do (REGEDIT /s "%%i")

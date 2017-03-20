@ECHO OFF

REG add "HKLM\SOFTWARE\Microsoft\Windows" /v "WhatEver" /t "REG_DWORD" /d "0" /f

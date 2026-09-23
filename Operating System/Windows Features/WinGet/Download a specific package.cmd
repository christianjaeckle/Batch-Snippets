@ECHO OFF
TITLE %~n0

REM Download the Notepad++ package to downloads folder from MSStore
WinGet download --query Notepad++ --download-directory "%UserProfile%\Downloads" --source msstore

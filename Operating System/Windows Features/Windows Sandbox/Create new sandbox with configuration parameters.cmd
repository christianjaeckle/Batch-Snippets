@ECHO OFF
TITLE %~n0
CLS

# REM Creates a new sanbox with default settings
WSB start --config "<Configuration><Networking>Disabled</Networking></Configuration>"

PAUSE

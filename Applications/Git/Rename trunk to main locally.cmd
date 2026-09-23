@ECHO OFF
TITLE %~n0
CLS

REM Rename trunk to main locally
GIT branch -m trunk main
GIT fetch origin
GIT branch -u origin/main main
GIT remote set-head origin -a

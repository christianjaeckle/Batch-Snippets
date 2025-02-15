@ECHO OFF
TITLE %~n0
CLS

SET SourcePath=D:\Source

REM Configure Git and repositories

ECHO.
ECHO Global Git Settings
ECHO ----------------------------------------------------------------------------
CD "%SourcePath%"

git config --global user.email MY_EMAIL@DOMAIN.com
git config --global user.name MY_GITUSERNAME
git config --global color.ui true
REM git config --global core.editor

MKDIR "%SourcePath%\Local"
MKDIR "%SourcePath%\Github"


ECHO.
ECHO Local Scripts
ECHO ----------------------------------------------------------------------------
CD "%SourcePath%\Local\SCRIPTS"

GIT clone https://github.com/christianjaeckle/SCRIPTS.git

CD "%SourcePath%\Local\Scripts\SCRIPTS"

git config user.email MY_EMAIL@DOMAIN.com
git config user.name MY_GITUSERNAME

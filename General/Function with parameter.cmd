@ECHO OFF
TITLE %~n0
SETLOCAL
SETLOCAL EnableDelayedExpansion

for /L %%a in (1 1 10) do (
        call:rand 25 30
        echo !RAND_NUM!
)

goto:EOF

REM The script ends at the above goto:EOF.  The following are functions.

REM rand()
REM Input: %1 is min, %2 is max.
REM Output: RAND_NUM is set to a random number from min through max.

:rand
SET /A RAND_NUM=%RANDOM% * (%2 - %1 + 1) / 32768 + %1
goto:EOF

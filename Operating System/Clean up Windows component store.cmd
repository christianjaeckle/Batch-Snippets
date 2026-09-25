@ECHO OFF
TITLE %~n0
CLS

REM Run the "StartComponentCleanup" task in Task Scheduler to clean up and compress components.
SchTasks.exe /Run /TN "\Microsoft\Windows\Servicing\StartComponentCleanup"

Remotely get installed version of Firefox on all domain computers
PSExec \\* cmd /c (cd "%ProgramFiles%\Mozilla Firefox\" ^& firefox -v ^| more)

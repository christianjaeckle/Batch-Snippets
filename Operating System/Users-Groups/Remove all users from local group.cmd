for /F %i in ("Net.exe localgroup TestGroup") do Net.exe localgroup TestGroup %i /delete

FOR /f %i IN (‘dsquery server -domain %userdnsdomain% -o rdn’) DO PSExec \\%i ipconfig /all

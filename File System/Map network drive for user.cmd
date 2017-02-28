ECHO.Remove current assignment for drive Z:
Net.exe USE Z: /delete /yes

ECHO.Add new persistent assignment for drive Z:
NET USE Z: "\\Server\share" /PERSISTENT:yes /USER:domain\username

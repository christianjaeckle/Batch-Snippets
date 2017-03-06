ECHO./s = Delete specified files from all subdirectories
ECHO./q = Don't ask for deleteion if global wildcards are being used
ECHO./f = Force deleting also of read-only files
ECHO./a = Delete hidden files

ECHO.Delete thumbs.db recursively
Del /s /q /f /a:h Thumbs.db

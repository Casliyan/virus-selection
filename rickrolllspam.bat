@echo off
:: URL of ASCII animation (raw/CLI friendly)
set URL=curl ASCII.live/can-you-hear-me

:: Number of windows to spawn
set COUNT=9

:: Loop to open multiple windows
for /L %%i in (1,1,%COUNT%) do (
    start cmd /k "curl -L %URL%"
)

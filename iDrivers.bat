@echo off
setlocal EnableExtensions

:: Use UTF-8 for emoji and other Unicode characters
chcp 65001 >nul

title 🍎 Apple-to-Windows Driver Pipeline v1.0 🚀
cls

:: Check for administrator privileges
net session >nul 2>&1
if errorlevel 1 (
    echo.
    echo 🛑 HOLD UP! 🛑
    echo This script requires administrator privileges.
    echo.
    echo 👉 Right-click this file and select "Run as administrator".
    echo.
    pause
    exit /b 1
)

:: Set the working directory to the script's folder
cd /d "%~dp0"

:: Check that the MSI exists
if not exist "AppleMobileDeviceSupport64.msi" (
    echo.
    echo 🕵️‍♂️ WHERE IS IT?! 🕵️‍♂️
    echo AppleMobileDeviceSupport64.msi was not found in:
    echo "%CD%"
    echo.
    echo 👉 Put this .bat file in the same folder as the MSI installer.
    echo.
    pause
    exit /b 1
)

echo.
echo 🛸 Initiating Apple-to-Windows bridge protocol...
echo 🛠️ Extracting the tethering drivers...
echo.

:: Install the MSI
msiexec.exe /i "AppleMobileDeviceSupport64.msi" INSTALL_DRIVERS=1 /qb

if errorlevel 1 (
    echo.
    echo ❌ The installer reported an error.
    echo MSI exit code: %errorlevel%
    echo.
    pause
    exit /b %errorlevel%
)

echo.
echo 🎉 VICTORY! 🎉
echo The installer has finished doing its dark magic. 🧙‍♂️
echo.
echo 📱 Next steps:
echo 1. Plug in your iPhone.
echo 2. Turn on Personal Hotspot.
echo 3. Connect to the tethered internet connection. 🌐
echo.

pause
endlocal

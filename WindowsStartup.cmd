@echo off
REM List of scripts that run on startup

echo Jimmy's Startup Script
echo.

powershell -ExecutionPolicy Bypass .\SpotlightCopy.ps1

echo Done!

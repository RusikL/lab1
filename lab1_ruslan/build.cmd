@echo off
cd /d "%~dp0"
if not exist build mkdir build
for %%f in (pw01-*.c) do (
    gcc -std=c11 -Wall -Wextra "%%f" -o "build\%%~nf.exe"
    if errorlevel 1 exit /b 1
)
echo Build complete. Run: build\pw01-1.exe

@echo off
setlocal
if "%~1"=="" (
  echo Usage: %~nx0 path\to\GeminiRepricing-Setup-1.1.4.exe
  exit /b 1
)
set "FILE=%~1"
echo Calculating SHA-256 and file size for:
echo   %FILE%
for /f "skip=1 tokens=1" %%H in ('certutil -hashfile "%FILE%" SHA256') do (
  if not defined HASH set "HASH=%%H"
)
for %%I in ("%FILE%") do set "SIZE=%%~zI"
echo.
echo --- Copy these into updates\appcast.json ---
echo   "size": %SIZE%,
echo   "sha256": "%HASH%"
echo -------------------------------------------
pause

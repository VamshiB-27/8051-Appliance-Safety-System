@echo off
setlocal EnableDelayedExpansion
cd /d "%~dp0"

set "BATCHISP=C:\Program Files (x86)\Atmel\Flip 3.4.7\bin\batchisp.exe"

echo ========================================
echo     8051 BUILD AND PROGRAM
echo ========================================

if not exist "%BATCHISP%" (
    echo ERROR: FLIP batchisp.exe not found.
    goto error
)

echo.
echo Cleaning previous build files...
del /q *.rel *.asm *.lst *.sym *.ihx *.hex *.lk *.map *.mem *.adb *.cdb *.omf *.rst 2>nul

set "OBJECTS="

for %%F in (*.c) do (
    echo.
    echo Compiling %%F...
    sdcc -mmcs51 --iram-size 128 --xram-size 0 --code-size 4096 --nooverlay --noinduction --std-sdcc89 --model-small -c "%%F"
    if errorlevel 1 goto error
    set "OBJECTS=!OBJECTS! %%~nF.rel"
)

if not defined OBJECTS (
    echo ERROR: No C source files found.
    goto error
)

echo.
echo Linking project...
sdcc -mmcs51 --iram-size 128 --xram-size 0 --code-size 4096 --nooverlay --noinduction --std-sdcc89 --model-small !OBJECTS!
if errorlevel 1 goto error

if not exist main.ihx (
    echo ERROR: main.ihx was not generated.
    goto error
)

echo.
echo Generating main.hex...
packihx main.ihx > main.hex
if errorlevel 1 goto error

if not exist main.hex (
    echo ERROR: main.hex was not generated.
    goto error
)

echo.
echo ========================================
echo Connect AT89C5131A in USB programming mode
echo ========================================
echo.

echo Erasing, programming and verifying...
"%BATCHISP%" -device AT89C5131 -hardware USB -operation erase f memory flash blankcheck loadbuffer "%CD%\main.hex" program verify
if errorlevel 1 goto error

echo.
echo ========================================
echo BUILD AND PROGRAM SUCCESSFUL
echo Firmware: main.hex
echo ========================================
echo.
pause
exit /b 0

:error
echo.
echo ========================================
echo BUILD OR PROGRAMMING FAILED
echo Check the error messages above.
echo ========================================
echo.
pause
exit /b 1
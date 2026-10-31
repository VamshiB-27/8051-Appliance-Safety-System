
@echo off
setlocal EnableExtensions EnableDelayedExpansion

title AT89C5131A BUILD AND PROGRAM

cd /d "%~dp0"

set "BATCHISP=C:\Program Files (x86)\Atmel\Flip 3.4.7\bin\batchisp.exe"

echo.
echo ========================================
echo     8051 BUILD AND PROGRAM
echo ========================================
echo.

if not exist "%BATCHISP%" (
    echo ERROR: FLIP batchisp.exe not found.
    echo Check the BATCHISP path in build.bat.
    goto FAILED
)

where sdcc >nul 2>nul

if errorlevel 1 (
    echo ERROR: SDCC compiler not found in PATH.
    goto FAILED
)

echo Cleaning previous build files...
del /q *.asm *.lst *.rst *.sym *.rel *.ihx *.lk *.map *.mem *.hex *.adb 2>nul

echo.
echo Compiling main.c...
sdcc -mmcs51 --iram-size 128 --xram-size 0 --code-size 32768 --noinduction --std-sdcc89 --model-small -c main.c

if errorlevel 1 goto FAILED

echo.
echo Compiling mcu_config.c...
sdcc -mmcs51 --iram-size 128 --xram-size 0 --code-size 32768 --noinduction --std-sdcc89 --model-small -c mcu_config.c

if errorlevel 1 goto FAILED

echo.
echo Compiling my_oled.c...
sdcc -mmcs51 --iram-size 128 --xram-size 0 --code-size 32768 --noinduction --std-sdcc89 --model-small -c my_oled.c

if errorlevel 1 goto FAILED

echo.
echo Compiling my_uart.c...
sdcc -mmcs51 --iram-size 128 --xram-size 0 --code-size 32768 --noinduction --std-sdcc89 --model-small -c my_uart.c

if errorlevel 1 goto FAILED

echo.
echo Linking project...

sdcc -mmcs51 --iram-size 128 --xram-size 0 --code-size 32768 --noinduction --std-sdcc89 --model-small main.rel mcu_config.rel my_oled.rel my_uart.rel

if errorlevel 1 goto FAILED

if not exist main.ihx (
    echo ERROR: main.ihx was not generated.
    goto FAILED
)

echo.
echo Generating HEX file...

packihx main.ihx > main.hex

if errorlevel 1 goto FAILED

if not exist main.hex (
    echo ERROR: main.hex was not generated.
    goto FAILED
)

for %%A in (main.hex) do (
    if %%~zA EQU 0 (
        echo ERROR: main.hex is empty.
        goto FAILED
    )
)

echo.
echo ========================================
echo     BUILD SUCCESSFUL
echo ========================================
echo.
echo HEX file: %CD%\main.hex
echo.

echo Connect AT89C5131A to FLIP and press any key to program.
pause >nul

echo.
echo Programming AT89C5131A...

"%BATCHISP%" -device AT89C5131 -hardware USB -operation erase f memory flash blankcheck loadbuffer "%CD%\main.hex" program verify

if errorlevel 1 goto FAILED

echo.
echo ========================================
echo     PROGRAMMING SUCCESSFUL
echo ========================================
echo.

pause
exit /b 0

:FAILED
echo.
echo ========================================
echo     BUILD OR PROGRAMMING FAILED
echo ========================================
echo Check the error messages above.
echo.

pause
exit /b 1

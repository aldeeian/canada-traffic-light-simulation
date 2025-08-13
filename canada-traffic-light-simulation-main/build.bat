@echo off
REM === Canada Traffic Light Simulation - Build (Windows) ===

setlocal enableextensions enabledelayedexpansion

REM Ensure build dir exists
if not exist build mkdir build

echo [1/1] Compiling sources...
gcc -Wall -Wextra -std=c99 -Iinclude -Isrc ^
  -o build\canada_traffic_sim.exe ^
  src\main.c src\traffic_light.c src\simulation.c src\user_interface.c src\utils.c

if %ERRORLEVEL% NEQ 0 (
  echo.
  echo Build failed.
  exit /b 1
)

echo.
echo Build successful: build\canada_traffic_sim.exe
echo Run: build\canada_traffic_sim.exe
endlocal

@echo off
REM === Canada Traffic Light Simulation - Build Tests (Windows) ===

setlocal enableextensions enabledelayedexpansion

if not exist build mkdir build

echo [1/2] Building test_traffic_light.exe ...
gcc -Wall -Wextra -std=c99 -Iinclude -Isrc ^
  -o build\test_traffic_light.exe ^
  tests\test_traffic_light.c src\traffic_light.c src\utils.c

if %ERRORLEVEL% NEQ 0 (
  echo Build of test_traffic_light.exe failed.
  exit /b 1
)

echo [2/2] Building test_simulation.exe ...
gcc -Wall -Wextra -std=c99 -Iinclude -Isrc ^
  -o build\test_simulation.exe ^
  tests\test_simulation.c src\traffic_light.c src\simulation.c src\utils.c

if %ERRORLEVEL% NEQ 0 (
  echo Build of test_simulation.exe failed.
  exit /b 1
)

echo.
echo Tests built:
echo   build\test_traffic_light.exe
echo   build\test_simulation.exe
endlocal

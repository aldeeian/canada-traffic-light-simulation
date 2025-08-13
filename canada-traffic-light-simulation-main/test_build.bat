@echo off
REM === Canada Traffic Light Simulation - Build & Run Tests (Windows) ===

call build_tests.bat
if %ERRORLEVEL% NEQ 0 exit /b 1

echo.
echo ---- Running tests ----
build\test_traffic_light.exe
if %ERRORLEVEL% NEQ 0 (
  echo test_traffic_light failed.
  exit /b 1
)

build\test_simulation.exe
if %ERRORLEVEL% NEQ 0 (
  echo test_simulation failed.
  exit /b 1
)

echo.
echo All tests passed.

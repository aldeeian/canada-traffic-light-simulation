@echo off
REM === Canada Traffic Light Simulation - Demo Runner (Windows) ===

if not exist build\canada_traffic_sim.exe (
  echo Executable not found. Building first...
  call build.bat
  if %ERRORLEVEL% NEQ 0 exit /b 1
)

echo.
echo Starting demo. Press Ctrl+C to stop the simulation.
build\canada_traffic_sim.exe

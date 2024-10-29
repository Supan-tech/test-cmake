@echo off
REM Navigate to the project directory
cd ./build

REM Run CMake to generate MinGW Makefiles
cmake -G "MinGW Makefiles" ..

REM Clean the build directory
mingw32-make clean

REM Build the project using mingw32-make with verbose output
mingw32-make VERBOSE=1

REM Check if the build was successful
if %ERRORLEVEL% neq 0 (
    echo Build failed!
    exit /b %ERRORLEVEL%
)

REM Run the executable
REM Replace "your_executable_name" with the actual name of your executable
.\hello

REM Check if the executable ran successfully
if %ERRORLEVEL% neq 0 (
    echo Execution failed!
    exit /b %ERRORLEVEL%
)

REM echo Build and execution completed successfully!

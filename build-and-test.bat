@echo off
set SL_PROXY=http://127.0.0.1:8888
set SL_TOOLS_PATH=C:\Utils\SeaLights\x64\
call build.bat
call test.bat
call test-nunit.bat
call test-xunit.bat
pause

@echo off
set SL_TOOLS_PATH=C:\Utils\SeaLights\x64\
set SL_AGENT=%SL_TOOLS_PATH%sl.dotnet.exe

set SL_ENV_NAME="Unit Tests-NUnit"
echo Running tests
del TestResult.xml
@rem %SL_AGENT% startBackgroundTestListener
%SL_AGENT% startExecution --TokenFile sltoken.txt --buildSessionIdFile buildSessionId.txt --testStage %SL_ENV_NAME%
%SL_AGENT% testListener --logAppendFile true --tokenfile sltoken.txt --buildSessionIdFile buildSessionId.txt --logAppendFile true --logAppendConsole true --target "packages\NUnit.ConsoleRunner.3.6.1\tools\nunit3-console.exe" --targetArgs "MyCalculatorNUnitTests\bin\Debug\MyCalculatorNUnitTests.dll"
%SL_AGENT% endExecution --TokenFile sltoken.txt --buildSessionIdFile buildSessionId.txt --testStage %SL_ENV_NAME%
echo Uploading report
%SL_AGENT% reportParser --tokenfile sltoken.txt --buildSessionIdFile buildSessionId.txt --report TestResult.xml --testStage %SL_ENV_NAME%


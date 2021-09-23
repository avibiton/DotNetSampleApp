@echo off
set SL_TOOLS_PATH=..\SL.DotNet-2.0.1.741\x86\
set SL_AGENT=%SL_TOOLS_PATH%sl.dotnet.exe

set SL_ENV_NAME="Unit Tests-NUnit"
echo Running tests
del TestResult.xml
@rem %SL_AGENT% startBackgroundTestListener
%SL_AGENT% startExecution --TokenFile sealights.token --buildSessionIdFile buildSession --testStage %SL_ENV_NAME% --proxy http://127.0.0.1:8888
%SL_AGENT% testListener --logAppendFile true --tokenfile sealights.token --buildSessionIdFile buildSession --logAppendFile true --logAppendConsole true --target "packages\NUnit.ConsoleRunner.3.6.1\tools\nunit3-console.exe" --targetArgs "MyCalculatorNUnitTests\bin\Debug\MyCalculatorNUnitTests.dll" --proxy http://127.0.0.1:8888
%SL_AGENT% endExecution --TokenFile sealights.token --buildSessionIdFile buildSession --testStage %SL_ENV_NAME% --proxy http://127.0.0.1:8888
echo Uploading report
%SL_AGENT% reportParser --tokenfile sealights.token --buildSessionIdFile buildSession --report TestResult.xml --testStage %SL_ENV_NAME% --proxy http://127.0.0.1:8888


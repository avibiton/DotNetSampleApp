@echo off
set SL_TOOLS_PATH=..\SL.DotNet-2.0.1.741\x64\
set SL_AGENT=%SL_TOOLS_PATH%sl.dotnet.exe
set MSTEST_PATH=c:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\MSTest.exe
set MSTEST_ARGS1=/testcontainer:MyCalculatorTests\bin\Debug\MyCalculatorTests.dll
set MSTEST_ARGS2=/testcontainer:Name1.Tests\bin\Debug\Name1.Tests.dll
rd /s /q TestResults
set SL_ENV_NAME="Unit Tests-MSTest"
echo Running tests
%SL_AGENT% startExecution --TokenFile sealights.token --buildSessionIdFile buildSession --testStage %SL_ENV_NAME% --proxy http://127.0.0.1:8888
echo Running tests1
%SL_AGENT% testListener --logAppendFile true --logAppendConsole true --tokenfile sealights.token --buildSessionIdFile buildSession --target "%MSTEST_PATH%" --targetArgs %MSTEST_ARGS1% --proxy http://127.0.0.1:8888
%SL_AGENT% testListener --logAppendFile true --logAppendConsole true --tokenfile sealights.token --buildSessionIdFile buildSession --target "%MSTEST_PATH%" --targetArgs %MSTEST_ARGS2% --proxy http://127.0.0.1:8888
echo Running tests2
%SL_AGENT% endExecution --TokenFile sealights.token --buildSessionIdFile buildSession --testStage %SL_ENV_NAME% --proxy http://127.0.0.1:8888
echo Uploading report
%SL_AGENT% reportParser --tokenfile sealights.token --buildSessionIdFile buildSession --report TestResults --testStage %SL_ENV_NAME% --proxy http://127.0.0.1:8888
echo done.

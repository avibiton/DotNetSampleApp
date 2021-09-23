@echo off
set SL_TOOLS_PATH=..\SL.DotNet-2.0.1.741\x64\
set SL_AGENT=%SL_TOOLS_PATH%sl.dotnet.exe
set SL_ENV_NAME="Unit Tests-XUnit"
echo Running tests
del xunit-report.xml
set SESSION_KEY=%RANDOM%%RANDOM%
echo SESSION KEY = %SESSION_KEY%
%SL_AGENT% startExecution --TokenFile sealights.token --buildSessionIdFile buildSession --testStage %SL_ENV_NAME% --proxy http://127.0.0.1:8888
@rem *** Note two options are available for execution: childTestExecution and sideBySideTestExecution
@rem goto childTestExecution
goto sideBySideTestExecution

:childTestExecution
%SL_AGENT% testListener --logAppendFile true --tokenfile sealights.token --buildSessionIdFile buildSession --target "packages\xunit.runner.console.2.2.0\tools\xunit.console.exe" --targetArgs "MyCalculatorXUnitTests\bin\Debug\MyCalculatorXUnitTests.dll -xml xunit-report.xml" --proxy http://127.0.0.1:8888
goto endExecution

:sideBySideTestExecution
%SL_AGENT% startBackgroundTestListener --logAppendFile true --tokenfile sealights.token --buildSessionIdFile buildSession --proxy http://127.0.0.1:8888 --testListenerSessionKey %SESSION_KEY%
set Cor_Enable_Profiling=1
set Cor_Profiler={01CA2C22-DC03-4FF5-8350-59E32A3536BA}
set Cor_Profiler_Path=c:\projects\sealights\SL.OnPremise.Agents.DotNet\Bin\x64\Release\SL.DotNet.ProfilerLib_x64.dll
set sealights_collectorid=%SESSION_KEY%
echo Starting test runner
packages\xunit.runner.console.2.2.0\tools\xunit.console.exe MyCalculatorXUnitTests\bin\Debug\MyCalculatorXUnitTests.dll -xml xunit-report.xml
@rem -nunit nunit-report.xml
set cor_enable_profiling=
set cor_profiler=
set cor_profiler_path=
set sealights_collectorid=
echo about to stop BG test listener
%SL_AGENT% stopBackgroundTestListener --logAppendFile true --tokenfile sealights.token --buildSessionIdFile buildSession --proxy http://127.0.0.1:8888 --testListenerSessionKey %SESSION_KEY%


:endExecution
%SL_AGENT% endExecution --TokenFile sealights.token --buildSessionIdFile buildSession --testStage %SL_ENV_NAME% --proxy http://127.0.0.1:8888
echo Uploading report
%SL_AGENT% reportParser --tokenfile sealights.token --buildSessionIdFile buildSession --report xunit-report.xml --testStage %SL_ENV_NAME% --proxy http://127.0.0.1:8888
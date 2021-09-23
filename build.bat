@echo off
echo Deleting existing build session Id file
@del .\buildSession

set SL_TOOLS_PATH=..\SL.DotNet-2.0.1.741\x64\
set SL_AGENT="%SL_TOOLS_PATH%sl.dotnet.exe"

set SL_PROXY=http://127.0.0.1:8888
set SL_APP_NAME=KiskassDemo
set SL_BRANCH_NAME=Branch1

@rem GENERATE A UNIQUE BUILD NAME BASED ON THE CURRENT TIME. See http://www.larmib.com/2011/dos-command-to-get-the-2-digit-hour-minute-and-second/ and https://stackoverflow.com/questions/4248220/how-can-i-retrieve-the-seconds-part-of-time-in-cmd
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c%%a%%b)
For /f "tokens=1-2 delims=/: " %%a in ('time /t') do (set mytime=%%a%%b%TIME:~6,2%)
set SL_BUILD_NAME=%mydate%_%mytime%

@rem Configure a new build session
%SL_AGENT% config --TokenFile "%cd%\\sealights.token" --appName %SL_APP_NAME% --branchName %SL_BRANCH_NAME% --buildName %SL_BUILD_NAME% --includeNamespace MyCalculator,ns1 --proxy %SL_PROXY% --buildSessionIdFile buildSession --logEnabled true --ignoreCertificateErrors true
pause
@rem Prepare for MSBuild
%SL_AGENT% prepareForMsBuild --TokenFile "%cd%\\sealights.token" --buildSessionIdFile buildSession --baseDir "%cd%" --workspacePath "%cd%" --proxy %SL_PROXY% --ignoreGeneratedCode true --logEnabled true --ignoreCertificateErrors true --excludedProjects *NUnit*,*XUnit*,*Tests*,*WebApplication*
@rem Run MSBuild
"%PROGRAMFILES(x86)%\Microsoft Visual Studio\2019\Professional\MSBuild\Current\Bin\MSBuild.exe" DotNetSampleApp.sln /t:Rebuild
@rem del after.DotNetSampleApp.sln.targets

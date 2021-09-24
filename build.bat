@echo off
echo "Exporting Token to a file..."

echo eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL0RFVi1jcy5hdXRoLnNlYWxpZ2h0cy5pby8iLCJqd3RpZCI6IkRFVi1jcyxpLTBjYjBlMmJjZjQzMWI0ZDllLEFQSUdXLTBlYWU1N2VmLTAxYzEtNDg1Yy1iZjBjLTYwMGYzNDM5MmM0OSwxNjI1NjQ1MzM0NjE2Iiwic3ViamVjdCI6IlNlYUxpZ2h0c0BhZ2VudCIsImF1ZGllbmNlIjpbImFnZW50cyJdLCJ4LXNsLXJvbGUiOiJhZ2VudCIsIngtc2wtc2VydmVyIjoiaHR0cHM6Ly9kZXYtY3MtZ3cuZGV2LnNlYWxpZ2h0cy5jby9hcGkiLCJzbF9pbXBlcl9zdWJqZWN0IjoiIiwiaWF0IjoxNjI1NjQ1MzM0fQ.VGzn5-0FvwtJAItdHgaRg7PuUDBKL2gRRxz8ixS1dp00UXqWBa_OiwZmcmY2zBmBUvUPptVNFEidGg1lOd09WmkMhFrLZIXPsQy9sm-OXghowo1VSMdFfCgRdDRwPBI2GaWXez7fV_V7epHfw8Ver2leNXJMF_GMar7DIkIYHIPj-aGeNImXHBbA8eqJfStjfmU11xBeo2kDcnsyKIXBfVGu2YIvJTgz_HkezDXjKPtXfaH5mpZeCSzvGR3LwEMxWD35JCgsMIKHFegNC38eh4bP1768fbMPUflrSQ63zp4aRXmiXPpp8h4VKXeZ-X3WzLui-01TJy0A_2D-25D2m2dvXk3i9_dmfgJaHlrnevPNu7-xZiDqNjP-QPIn8TQbDwa_k8g-oNfMUzt51p4Fd0jpiRNVJvIRq8IEXBuM83Vj9PvxhAIRQ6eB9KqM21BdM_3BtljKSMufIDf6zHTD8MkJzna90sWB1LSmDVr50plWSIElkF4n-BF4420wTY6wES0ZvvJbCrjcCfOoBnYUJou29167eu86go44EYQEqyBtp1SdS8A08hgROuQYYQg8iU9jXTf6qTASoRtdcvh_XZgP_UtlDFsKwuV2KBRVbXTILikqmFQGs6BMGNjhlX4Mw06hVT4edjKElYqxPvtA_NxewL6mFJCfuENn-OKz08A > sltoken.txt

echo "Downloading Sealights Agents..."
c:\utils\wget -nv http://agents.sealights.co/SL.DotNet/SL.DotNet-2.0.1.745.zip
c:\utils\7z e -y SL.DotNet-2.0.1.745.zip
for /F %%i in (version.txt) do @echo version is %%i

set SL_APP_NAME=DotNet_APP
set SL_BRANCH_NAME=master
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c%%a%%b)
For /f "tokens=1-2 delims=/: " %%a in ('time /t') do (set mytime=%%a%%b%TIME:~6,2%)
set SL_BUILD_NAME=%mydate%_%mytime%

echo "Configure Build Session ID..."
SL.DotNet.exe config --TokenFile sltoken.txt --appName %SL_APP_NAME% --branchName %SL_BRANCH_NAME% --buildName %SL_BUILD_NAME% --includeNamespace MyCalculator,ns1 --buildSessionIdFile buildSessionId.txt --logEnabled true --ignoreCertificateErrors true

echo "Prepare for MSBuild..."
SL.DotNet.exe prepareForMsBuild --TokenFile sltoken.txt --buildSessionIdFile buildSessionId.txt --baseDir "%cd%" --workspacePath "%cd%" --ignoreGeneratedCode true --logEnabled true --ignoreCertificateErrors true --excludedProjects *NUnit*,*XUnit*,*Tests*,*WebApplication*

echo "Run MSBuild..."
"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\amd64\MSBuild.exe" DotNetSampleApp.sln /t:Rebuild


echo "Scanning the build..."
SL.DotNet.exe scan --buildSessionIdFile buildSessionId.txt --workspacePath "%cd%"\MyCalculator --ignoreGeneratedCode true



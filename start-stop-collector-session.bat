@echo off
set SL_TOOLS_PATH=..\..\Bundle\x64\
set SL_AGENT="%SL_TOOLS_PATH%sl.dotnet.exe"
%SL_AGENT% startCollectorServiceSession --TokenFile "%cd%\\sealights.token" --buildSessionIdFile buildSession --processName Shmulik.exe --processTag Tag1
%SL_AGENT% stopCollectorServiceSession --TokenFile "%cd%\\sealights.token" --buildSessionIdFile buildSession --processName Shmulik.exe --processTag Tag1
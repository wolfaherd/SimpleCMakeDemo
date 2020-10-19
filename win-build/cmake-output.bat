@echo off  
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat" 

echo CMakeLibrary Debug
cmd  /c MSBuild  CMakeLibrary.sln /t:Clean /p:Configuration=Debug
cmd  /c MSBuild  CMakeLibrary.sln /t:rebuild /p:Configuration=Debug

echo CMakeLibrary Release
cmd  /c MSBuild  CMakeLibrary.sln /t:Clean /p:Configuration=Release
cmd  /c MSBuild  CMakeLibrary.sln /t:rebuild /p:Configuration=Release

pause
exit
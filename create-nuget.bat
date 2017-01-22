rd /S /Q .\Publishing\lib

call build.bat
if %errorlevel% neq 0 exit /b %errorlevel%

md .\Publishing\lib
md .\Publishing\lib\net45

copy .\bin\Release\Metrics.NET.Graphite.dll .\Publishing\lib\net45\
copy .\bin\Release\Metrics.NET.Graphite.xml .\Publishing\lib\net45\
copy .\bin\Release\Metrics.NET.Graphite.pdb .\Publishing\lib\net45\

.\.nuget\NuGet.exe pack .\Publishing\Metrics.NET.Graphite.nuspec -OutputDirectory .\Publishing
if %errorlevel% neq 0 exit /b %errorlevel%
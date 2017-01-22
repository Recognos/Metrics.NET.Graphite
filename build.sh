mono .nuget/NuGet.exe restore Metrics.sln 

xbuild Metrics.Sln /p:Configuration="Debug"
xbuild Metrics.Sln /p:Configuration="Release"
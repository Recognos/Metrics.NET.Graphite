mono .nuget/NuGet.exe restore Metrics.NET.Graphite.sln 

xbuild Metrics.NET.Graphite.Sln /p:Configuration="Debug"
xbuild Metrics.NET.Graphite.Sln /p:Configuration="Release"
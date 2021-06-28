cl.exe /LD library.c
link.exe /DLL /OUT:library.dll library.obj
.\C2CS.exe ast -i .\library.h -o .\ast.json
.\C2CS.exe cs -i .\ast.json -o .\library.cs
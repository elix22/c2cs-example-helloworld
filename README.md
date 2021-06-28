# c2cs-example-helloworld

Minimal example of using C2CS to generate and run C code from C#.

## Setup

### Downloading C2CS

#### Windows

```cmd
Powershell.exe -ExecutionPolicy Bypass -File .\get-c2cs.ps1
```

#### macOS/Ubuntu
```bash
```

### Build native library + generate C# code

#### Windows

```cmd
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"
Powershell.exe -ExecutionPolicy Bypass -File .\build.ps1
```

#### macOS/Ubuntu

```bash
```

### Build / run C# project

#### Windows

```cmd
dotnet run .\helloworld.csproj
```
Invoke-WebRequest -Uri https://nightly.link/lithiumtoast/c2cs/workflows/build-test-deploy/develop/win-x64.zip -OutFile .\C2CS.zip
Expand-Archive -Path .\C2CS.zip -DestinationPath .\
Remove-Item .\C2CS.zip
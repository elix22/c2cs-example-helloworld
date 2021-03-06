#!/bin/bash

unamestr="$(uname | tr '[:upper:]' '[:lower:]')"
if [ "$unamestr" == "darwin" ]; then
    curl -L https://nightly.link/lithiumtoast/c2cs/workflows/build-test-deploy/develop/osx-x64.zip > "./C2CS.zip"
    unzip ./C2CS.zip -d ./
    chmod +x ./C2CS
    rm ./C2CS.zip
elif [[ "$unamestr" == "linux" ]]; then
    curl -L https://nightly.link/lithiumtoast/c2cs/workflows/build-test-deploy/develop/ubuntu.20.04-x64.zip > "./C2CS.zip"
    unzip ./C2CS.zip -d ./
    rm ./C2CS.zip
else
    echo "Unknown platform: '$unamestr'."
fi

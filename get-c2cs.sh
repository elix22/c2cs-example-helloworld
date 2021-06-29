#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    curl -L https://nightly.link/lithiumtoast/c2cs/workflows/build-test-deploy/develop/osx-x64.zip > "./C2CS.zip"
    unzip ./C2CS.zip -d ./
    chmod +x ./C2CS
    rm ./C2CS.zip
else
    echo "Unknown platform."
fi

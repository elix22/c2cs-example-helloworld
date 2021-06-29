#!/bin/bash

unamestr="$(uname | tr '[:upper:]' '[:lower:]')"
if [ "$unamestr" == "darwin" ]; then
    gcc -c -fPIC -o ./library.o ./library.c
    gcc -shared -o ./liblibrary.dylib ./library.o
    rm ./library.o
    ./C2CS ast -i ./library.h -o ./ast.json
    ./C2CS cs -i ./ast.json -o ./library.cs
elif [[ "$unamestr" == "linux" ]]; then
    gcc -c -fPIC -o ./library.o ./library.c
    gcc -shared -o ./liblibrary.so ./library.o
    rm ./library.o
    ./C2CS ast -i ./library.h -o ./ast.json
    ./C2CS cs -i ./ast.json -o ./library.cs
else
    echo "Unknown platform: '$unamestr'."
fi

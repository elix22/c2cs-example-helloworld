#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    gcc -c -fPIC -o ./library.o ./library.c
    gcc -shared -o ./liblibrary.dylib ./library.o
    rm ./library.o
    ./C2CS ast -i ./library.h -o ./ast.json
    ./C2CS cs -i ./ast.json -o ./library.cs
else
    echo "Unknown platform."
fi

#!/bin/bash

make all || {
    echo "Build failed"
    exit 1
}

./main || {
    echo "Execution failed"
    rm main.o main
    exit 1
}
rm main.o main

exit 0
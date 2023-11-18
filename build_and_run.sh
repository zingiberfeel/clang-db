#!/bin/bash

OUTPUT_NAME="clang-db"

SOURCE_FILES=$(find . -maxdepth 1 -name "*.c" -type f | tr '\n' ' ')

gcc -o "$OUTPUT_NAME" $SOURCE_FILES

if [ $? -eq 0 ]; then 
    echo "Compilation successful"

    ./"$OUTPUT_NAME"
else 
    echo "Compilation failed"
fi
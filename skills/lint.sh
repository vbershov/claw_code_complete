#!/bin/bash
echo "Running linters..."
if command -v flake8 &> /dev/null
then
    flake8 src/
else
    echo "flake8 not found. Skipping linting."
fi

#!/bin/bash
echo "Running tests..."
if command -v pytest &> /dev/null
then
    export PYTHONPATH=$PYTHONPATH:$(pwd)
    pytest
else
    echo "pytest not found. Skipping tests."
fi

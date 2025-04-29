#!/bin/bash

# Create results directory if it doesn't exist and ensure it's empty
rm -rf results
mkdir -p results

# Run tests with output to results directory
robot \
    --outputdir results \
    --log log.html \
    --report report.html \
    tests/ 
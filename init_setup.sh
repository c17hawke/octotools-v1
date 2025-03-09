#!/bin/bash

echo [$(date)]: "START"
if [ -f "pyproject.toml" ]; then
    echo [$(date)]: "pyproject.toml exists. Continue installation."
    echo [$(date)]: "Creating virtual env with poetry" 
    poetry lock 
    poetry install 
else
    echo [$(date)]: "pyproject.toml does not exist. Installation failed. Exiting script. Run 'poetry init' to create one!"
fi
echo [$(date)]: "END"

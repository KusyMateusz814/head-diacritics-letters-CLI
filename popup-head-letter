#!/bin/bash

SCRIPT="$(realpath "$0" )"
SCRIPTPATH="$(dirname "$SCRIPT")"
echo "SCRIPT: $SCRIPT"
echo "SCRIPTPATH: $SCRIPTPATH"
PythonPath="$SCRIPTPATH""/venv/bin/python"
echo "PythonPath:  $PythonPath"
"$PythonPath" "$SCRIPTPATH""/popup-head-letter.py" "$*"

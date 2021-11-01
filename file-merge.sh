#!/bin/bash
BASE_DIR="/home/hal/src/python"
rm "$BASE_DIR/output.py"
for d in $BASE_DIR/*;  do
	HANDLE=$(basename -- ${d%%.*})
	echo "import ${HANDLE}" >> "$BASE_DIR/output.py"
	echo "${HANDLE}.hello()" >> "$BASE_DIR/output.py"
done



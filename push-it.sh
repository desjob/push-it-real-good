#!/bin/sh
SCRIPT_DIR=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

command -v cvlc >/dev/null 2>&1 || { echo >&2 "cvlc is not installed. not pushing it real good :("; exit 1; }

ls $SCRIPT_DIR/audio |sort -R |tail -1 |while read file; do
	echo "push it real good!"
	(cvlc --play-and-exit $SCRIPT_DIR/audio/$file > /dev/null 2>&1) 
done

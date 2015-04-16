#!/bin/sh

command -v cvlc >/dev/null 2>&1 || { echo >&2 "cvlc is not installed. not pushing it real good :("; exit 1; }

ls audio |sort -R |tail -1 |while read file; do
	echo "push it real good!"
	(cvlc --play-and-exit audio/$file > /dev/null 2>&1) 
done

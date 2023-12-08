#!/bin/bash

cat /etc/passwd | sed -n '2~2p' | awk -F: '{print $1}' | rev | sort --reverse | sed -n "${FT_LINE1},${FT_LINE2}p" | sed -z 's/\n/, /g' | sed 's/..$//'

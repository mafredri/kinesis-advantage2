#!/usr/bin/env zsh
0=${(%):-%N}
DIR=${0:A:h}
VOL=/Volumes/KINESIS\ KB

(cd $DIR;
	rsync --exclude-from .gitignore -rav ${VOL:t} /Volumes/
)

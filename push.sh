#!/usr/bin/env zsh
0=${(%):-%N}
DIR=${0:A:h}
VOL=/Volumes/KINESIS\ KB

(cd $DIR;
	[[ -d $VOL ]] || {
		print "error: volume is not mounted ($VOL)"
		exit 1
	}
	rsync --exclude-from .gitignore -rav ${VOL:t} /Volumes/
)

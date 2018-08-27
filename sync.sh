#!/usr/bin/env zsh
0=${(%):-%N}
DIR=${0:A:h}
VOL=/Volumes/KINESIS\ KB

(cd $DIR;
	rsync -rav $VOL ./
	git add .
	git commit -v -m 'Sync config'
)

diskutil unmount $VOL

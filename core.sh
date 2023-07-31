#!/bin/bash

filename="*soa_noros_node*"

source_dir="/userdata/log"


target_dir="/userdata/core"

i=1
while [ $i -le 10000000 ]
do
    echo "Round $i:"

	if [ -f `ls $source_dir/$filename` ]; then


	sleep 300

	cp $source_dir/$filename $target_dir

	echo "pass"

	else

	echo "miss"

	fi
	i=$((i+1))
	sleep 60

done

#!/bin/bash
function readDir() {
	for element in $(ls $1); do
		dir_or_file=$1"/"$element
		if [ -d $dir_or_file ]; then
			# if [ $element = ".git" ]; then
			cd $dir_or_file
			echo "cd $dir_or_file"
			echo "git fetch -p"
			git fetch -p
			# fi
		fi
	done
}
readDir $1

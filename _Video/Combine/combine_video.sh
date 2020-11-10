#!/bin/bash
#
IFS=","
export IFS;


if [ $# -lt 3 ] ; then
	echo ""
	echo "Usage : $0  \"[Input_Folder]\"  \"[Picture_Per_Second]\" \"[Output_Name] "\"
	echo ""
	exit 1
fi

rm combine.txt

# # Read file name
for file in $1/*.[mM][pP]4;
do
	# # File name remove path e.g. abc135.mp4
	foldername=$(basename $file)
	folderpath="$1$foldername"
	echo "file '$folderpath'" >>combine.txt
	echo $folderpath
	echo "---------------------------------"	

	echo ""	
done
ffmpeg.NEW.1 -f concat -i combine.txt -c copy $3-combine.mp4


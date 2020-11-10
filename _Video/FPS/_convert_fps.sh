#!/bin/bash
#ffmpeg.NEW.1 -i 20170828190821.MP4 -r 15 -ss 00:00:35 -t 00:00:13 -an -vc libx264 -y ahead_car3.mp4

IFS=","
export IFS;

if [ $# -lt 2 ] ; then
	echo ""
	echo "Usage : $0  \"[Folder_Path]\" \"[Picture_Per_Second]\""
	echo ""
	exit 1
fi


# # Read file name
mkdir $1/converted
for file in $1/*.[mM][pP]4; 
do
	((Count++))

	# # file name remove path e.g. abc135.mp4		
	filename=$(basename $file)
	#echo $filename

	# # get extension of filename, e.g. mp4
	extension="${filename##*.}"
	#echo $extension
	
	# # get file name without extension, e.g. abc135
	filename="${filename%.*}"
	#echo ${filename}
	
	# create picture folder
	#mkdir $1$filename
	ffmpeg.NEW.1 -i $1$filename.$extension -r 15 -an -vc libx264 -y $1$filename-1.$extension
	mv $1$filename-1.$extension $1/converted
done

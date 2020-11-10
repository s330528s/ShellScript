#!/bin/bash
#
IFS=","
export IFS;

if [ $# -lt 2 ] ; then
	echo ""
	echo "Usage : $0  \"[Folder_Path]\" \"[Picture_Per_Second]\""
	echo ""
	exit 1
fi


# # Read file name
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
	mkdir $1$filename
	./_VideoTransfer_transfer_video_to_img.sh $1$filename.$extension $2 $1$filename/$filename-%04d.jpg
	mv $1$filename.$extension $1$filename
done

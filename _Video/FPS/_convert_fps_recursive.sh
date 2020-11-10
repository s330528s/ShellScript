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

#subdircount='find /d/temp/ -maxdepth 1 -typ d | wc -1'


mkdir $1/converted

#subfile='find $1 -iname '*.mp4' do
#for file in $1/*.[mM][pP]4; do
#for file in $subfile; do
#for file in 'find -L -name "*.mp4"'; do
#for file in find $1 -type f -name "*.MP4*" ; do
#for file in `find $1 -name'*.mp4' -or -name '*.MP4'`; do

File_Extension="MP4"
File_Postfix_String="_$2f"


File_List=(`find -L $1 -type f -iname "*.${File_Extension}" -print | grep -iv "${File_Postfix_String}.${File_Extension}"`)

readarray File_Array <<< "${File_List}"

Count=1


for Item in ${File_Array[@]}
do
	Input_Filename=`echo "${Item}" | sed -e "s/$//g"`

	Dirname=`dirname ${Input_Filename}`

	Filename=${Input_Filename##*/}

	# get extension of filename, e.g. mp4
	Extension="${Filename##*.}"

	# get file name without extension, e.g. abc135
	Filename="${Filename%.*}"

	Output_Filename="${Dirname}/${Filename}${File_Postfix_String}.${Extension}"

	echo "---------------------------------"
	echo " (${Count}). Processing the file ......"
	echo "---------------------------------"
	echo "      Input  File : [${Input_Filename}]"
	echo "      Output File : [${Output_Filename}]"
	ffmpeg.NEW.2 -threads 4 -i "$Input_Filename" -r $2 -an -vc libx264 -y "${Output_Filename}" > /dev/null 2>&1
	echo ""
	echo ""

	(( Count = Count + 1 ))
	mv $Output_Filename $1/converted
done

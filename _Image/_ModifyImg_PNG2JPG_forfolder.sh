#!/bin/bash

IFS=","
export IFS;


if [ $# -lt 2 ] ; then
        echo ""
        echo "Usage : $0  \"[Input_Folder]\"  \"[Output_Name] "\"
        echo ""
        exit 1
fi

# --------------------------------------------------------




# --------------------------------------------------------


for file in $1/*.[pP][nN][gG];
do
        # # File name remove path e.g. abc135.mp4
        foldername=$(basename $file)
        folderpath="$1$foldername"
	Newfoldername=`echo $foldername | awk -F'.' '{print $1}'`;
	outputname=$2/$Newfoldername.jpg
        #echo "file '$folderpath'" >>combine.txt
        echo $file
        #echo $foldername
        #echo $folderpath
        echo $foldername | awk -F'.' '{print $1}'
        echo "---------------------------------"
        echo $outputname

	convert -quality 88 -background black -alpha remove -type TrueColor $file $outputname
        
done

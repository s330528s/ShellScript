

IFS=","
export IFS;


if [ $# -lt 2 ] ; then
        echo ""
        echo "Usage : $0  \"[Input_Folder]\"  \"[Output_Name] "\"
        echo ""
        exit 1
fi

# --------------------------------------------------------

ImgResize_1="320x105"
ImgResize_2="640x211"
ImgResize_3="1280x720"

# --------------------------------------------------------


for file in $1/*.[jJ][pP][gG];
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
        #echo "---------------------------------"
        echo $outputname
	echo "---------------------------------"

	#convert -quality 88 -background black -alpha remove -type TrueColor $file $outputname
	
	convert -resize $ImgResize_1! $file $2/$Newfoldername\_$ImgResize_1.jpg
	
	convert -resize $ImgResize_2! $file $2/$Newfoldername\_$ImgResize_2.jpg
	
	convert -resize $ImgResize_3! $file $2/$Newfoldername\_$ImgResize_3.jpg
	
	#tt="convert -resize $ImgResize_3! $file $2/$Newfoldername\_$ImgResize_3.jpg"
	#echo $tt
	#convert -resize 80x80! 20170711091112.00.JPG 20170711091112.01.JPG
        
done

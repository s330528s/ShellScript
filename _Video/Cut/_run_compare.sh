#!/bin/sh
#
#ffmpeg.NEW.1 -i 20170828190821.MP4  -ss 00:00:35 -t 00:00:13 -an -vc libx264 -y ahead_car3.mp4
Executable_Filename="ffmpeg.NEW.1 -threads 8 "
#Video Name
Executable_Parameter1="-i"
#
Source_Filename="$1"
#start time
Executable_Parameter2="-ss"
#
Sourece_Begin_Time="$2"
#how much time on cut video
Executable_Parameter3="-t"
#
Sourece_Cut_Time="$3"
#
Executable_Parameter4="-an -vc libx264 -y"
#
Target_Filename="$4"
#

# ---------------------------------------------------------------------------------------------
if [ $# != 4 ] ; then
    echo ""
    echo "Usage : $0 \"[Source_Filename]\" \"[Target_Filename]\""
    echo ""

    exit 1;
else
   echo "${Executable_Filename}  ${Executable_Parameter1}  ${Source_Filename}   ${Executable_Parameter2}  ${Sourece_Begin_Time} ${Executable_Parameter3} ${Sourece_Cut_Time} ${Executable_Parameter4} ${Target_Filename}"
fi
# ---------------------------------------------------------------------------------------------
#
#
# =============================================================================================

${Executable_Filename}  ${Executable_Parameter1}  ${Source_Filename}   ${Executable_Parameter2}  ${Sourece_Begin_Time} ${Executable_Parameter3} ${Sourece_Cut_Time} ${Executable_Parameter4} ${Target_Filename} 

# =============================================================================================
#
#
exit 0
#
#


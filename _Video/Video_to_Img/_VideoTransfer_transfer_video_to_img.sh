#!/bin/sh
#example:
#ffmpeg.NEW.1 -i 20170912144227_1.mp4 -r 15 -s 1280x720 -f image2 -qscale 0 -y 20170912144227_1/20170912144227_1-%04d.jpg
%---------------------------------------------------------------------------------------------
#input parameter
# =============================================================================================
Executable_Name="ffmpeg.NEW.1"

Executable_Operation1="-i"
Executable_Operation2="-r"
Executable_Operation3="-s"
Executable_Operation4="-f"
Executable_Operation5="-qscale"
Executable_Operation6="-y"

#parameter_1
Source_Filename="$1"
#parameter_2
Frame_Per_Second="$2"
#parameter_6
Output_Filename="$3"


#parameter_3
#Resolution="1280x720"
Resolution="768x320"
#parameter_4
Output_Format="image2"
#parameter_5
Qscale="0"
# =============================================================================================

# =============================================================================================
if [ $# != 3 ] ; then
    echo ""
    echo "Usage : ${Executable_Name} \"[Source_Filename]\" \"[FPS]\" \"[Output_Data_Path]\""
    echo ""
    exit 1;
else
   echo "${Executable_Name}  ${Executable_Operation1}  ${Source_Filename}   ${Executable_Operation2}  ${Frame_Per_Second}  ${Executable_Operation3}  ${Resolution}  ${Executable_Operation4}  ${output_Format}  ${Executable_Operation5}  ${Qscale}  ${Executable_Operation6}  ${Output_Filename}"
fi
# =============================================================================================

${Executable_Name}  ${Executable_Operation1}  ${Source_Filename}   ${Executable_Operation2}  ${Frame_Per_Second}  ${Executable_Operation3}  ${Resolution}  ${Executable_Operation4}  ${Output_Format}  ${Executable_Operation5}  ${Qscale}  ${Executable_Operation6}  ${Output_Filename}
exit 0
%---------------------------------------------------------------------------------------------
#
#

#
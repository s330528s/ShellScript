#!/bin/sh
#
#
#Source_Filename_Prefix="$1"
#
#
# ---------------------------------------------------------------------------------------------
#if [ $# != 1 ] ; then
#   echo ""
#   echo "Usage : $0 /"[Source_Filename_Prefix]/""
#   echo ""
#   exit -1;
#fi
# ---------------------------------------------------------------------------------------------
# ffmpeg.NEW.1 -i PD_close_1.mp4 -r 15 -s 1280x720 -f image2 -qscale 0 -y PD_close_1_%04d.jpg
#ffmpeg.NEW.1 -i $video_name.mp4 -r 15 -s 1280x720 -f image2 -qscale 0 -y $video_name%04d.jpg
# ./_run_compare.sh 20171215154150.MP4 00:03:10 00:00:15 20171215154150-2.mp4
# ./_run_compare.sh $Video_Name.MP4 00:04:50 00:00:30 $Video_Name/_1.MP4 &
# =============================================================================================

extension="MP4"

video_name=20191105163119
./_run_compare.sh $video_name.$extension 00:00:05  00:00:01 $video_name\_combine_Ori_15f_N1_1.mp4 &

#video_name=20190712162055_15f
#./_run_compare.sh $video_name.$extension 00:00:10  00:00:20 $video_name\_combine_Ori_15f_N1_2.mp4 &

#video_name=20190712161747_15f
#./_run_compare.sh $video_name.$extension 00:00:01  00:00:08 $video_name\_combine_Ori_15f_N4_3.mp4 &

#video_name=20190712161422_15f
#./_run_compare.sh $video_name.$extension 00:00:01  00:00:05 $video_name\_combine_Ori_15f_N4_4.mp4 &

#video_name=20190712161340_15f
#./_run_compare.sh $video_name.$extension 00:00:00  00:00:05 $video_name\_combine_Ori_15f_N4_5.mp4 &


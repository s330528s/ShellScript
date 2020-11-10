#!/bin/sh
#
if [ $# -eq 2 ] ; then
	source_file="${1}"
	target_dir="${2}"
	filename=`basename ${source_file}`

	montage "${source_file}" -crop 1280x720+0+0 -resize '35%x35%!' -geometry '1280x720>' -background black -quality 95 "${target_dir}/${filename}"
else
	echo ""
	echo "Usage : ${0} [intput_filename] [output_filename]"
	echo ""
fi

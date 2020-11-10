#!/bin/sh
#
find _input/ -name "*.jpg" -exec ./my_montage.sh \{\} _output \;

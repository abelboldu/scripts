#!/bin/bash
# Simple script to create avis from gifs
# vdo 2013
if [ -z $1 ];
then echo "Missing param!"; exit;
fi
convert -verbose -coalesce -background black  -quality 100 $1 temp%08d.png
ffmpeg   -i temp%08d.png -vcodec mpeg4  -vb 20M "$1.avi"
rm temp*.png

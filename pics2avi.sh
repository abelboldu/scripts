mkdir temp
cp *.jpg temp/.
mogrify -verbose -fill "#000000" -resize 1024x768 -scale 1024x768 temp/*.jpg
mencoder -speed 0.1 "mf://temp/*.jpg" -o output.avi -ovc lavc -lavcopts vcodec=mjpeg
#rm -R temp

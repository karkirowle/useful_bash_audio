
for file in $(find -name "*.mp3")
do
	ffmpeg -i $file -f segment -segment_time 5 -c copy "${file}_cut_%03d.mp3"
done


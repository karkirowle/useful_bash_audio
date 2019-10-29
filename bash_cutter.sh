for file in $(find -name "*.wav")
do
	ffmpeg -i $file -f segment -segment_time 5 -c copy "${file}_%03d.wav"
done

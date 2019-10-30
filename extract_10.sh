for i in *.mp3
do 
  sox "$i" sample-"$i" trim 0 10
done

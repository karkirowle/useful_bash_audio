times=()
for file in $(find -name "*.wav")
do
	_t=$(soxi -D $file)
	times+=("$_t")
done
echo "${times[@]}" | sed 's/ /+/g' | bc


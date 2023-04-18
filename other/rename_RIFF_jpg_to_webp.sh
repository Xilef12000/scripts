# files using the RIFF-format but saved as .jpg (for example when using the download function of the Reddit mobile app) will be renamed into .webp
# for Reddit images:
FILES="$PWD/RDT_*jpg"
# for other images:
#FILES="$PWD/*jpg"
for f in $FILES
do
	if [ $(head -c 4 $f) = "RIFF" ]
	then
		#echo $f
		#head -c 4 $f
		mv -- "$f" "${f%.jpg}.webp"
	fi
done
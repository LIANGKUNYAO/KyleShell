function generateIcon() {	
	sourceImage=$1
	outDire=$2
	# 验证存在性
    if [[ ! -z ${sourceImage} &&  -f ${sourceImage} ]]
    then
		convert -resize 58x58 ${sourceImage} ${outDire}/AppIcon-29x29@2x.png
		convert -resize 87x87 ${sourceImage} ${outDire}/AppIcon-29x29@3x.png
		convert -resize 40x40 ${sourceImage} ${outDire}/AppIcon-40x40@1x.png
		convert -resize 80x80 ${sourceImage} ${outDire}/AppIcon-40x40@2x.png
		convert -resize 120x120 ${sourceImage} ${outDire}/AppIcon-40x40@3x.png
		convert -resize 60x60 ${sourceImage} ${outDire}/AppIcon-60x60@1x.png
		convert -resize 120x120 ${sourceImage} ${outDire}/AppIcon-60x60@2x.png
		convert -resize 180x180 ${sourceImage} ${outDire}/AppIcon-60x60@3x.png
		convert -resize 76x76 ${sourceImage} ${outDire}/AppIcon-76x76@1x.png
		convert -resize 152x152 ${sourceImage} ${outDire}/AppIcon-76x76@2x.png
		convert -resize 167x167 ${sourceImage} ${outDire}/AppIcon-83.5x83.5@2x.png 
    fi
}

convertPath=`which convert`
if [[ ! -f ${convertPath} || -z ${convertPath} ]];
then
	echo "============== WARNING: Install ImageMagick First =============="
else
	outDire="./output"

	if [ -d "$outDire" ];
	then
		rm -rf "$outDire"
	fi
	mkdir "$outDire"
	generateIcon "salesTrends.png" "${outDire}"
fi
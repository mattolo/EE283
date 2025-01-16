SourceDir="/data/class/ecoevo283/public/Bioinformatics_Course/DNAseq/"
DestDir="/pub/mwliu1/EE283/DNAseq"
FILES="$SourceDir/*"
for f in $FILES
do
   ff=$(basename $f)
   echo "Processing $ff file..."
   ln -s $SourceDir/$ff $DestDir/$ff
done

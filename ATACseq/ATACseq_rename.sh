SourceDir="/data/class/ecoevo283/public/Bioinformatics_Course/ATACseq/"
DestDir="/pub/mwliu1/EE283/ATACseq/"
File="ATACseq.labels.txt"
while read p
do
   echo "${p}"
   barcode=$(echo $p | cut -f1 -d" ")
   genotype=$(echo $p | cut -f2 -d" ")
   tissue=$(echo $p | cut -f3 -d" ")
   bioRep=$(echo $p | cut -f4 -d" ")
   READ1=$(find ${SourceDir}/ -type f -iname "*_${barcode}_R1.fq.gz")
   READ2=$(find ${SourceDir}/ -type f -iname "*_${barcode}_R2.fq.gz")
   ln -s $READ1 $DestDir/${barcode}_R1.fq.gz
   ln -s $READ2 $DestDir/${barcode}_R2.fq.gz
done < $File

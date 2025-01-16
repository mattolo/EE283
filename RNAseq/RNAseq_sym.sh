SourceDir="/data/class/ecoevo283/public/Bioinformatics_Course/RNAseq/RNAseq384plex_flowcell01/"
DestDir="/pub/mwliu1/EE283/RNAseq/"
File="RNAseq384_SampleCoding.txt"

while read p
do
   index=$(echo $p | cut -f4 -d " ")
   lane=$(echo $p | cut -f3 -d " ")
   sampleNum=$(echo $p | cut -f1 -d " ")
   sampleName=$(echo $p | cut -f12 -d " ")
   READ1=$(find ${SourceDir} -type f -iname "${sampleNum}_${index}_${lane}*R1*.fastq.gz")
   READ2=$(find ${SourceDir} -type f -iname "${sampleNum}_${index}_${lane}*R2*.fastq.gz")
   ln -s $READ1 ${DestDir}${sampleNum}_${sampleName}_R1.fq.gz
   ln -s $READ2 ${DestDir}${sampleNum}_${sampleName}_R2.fq.gz
   #echo ${DestDir}${sampleNum}_${sampleName}_R1.fq.gz
   #echo ${DestDir}${sampleNum}_${sampleName}_R2.fq.gz

done < $File

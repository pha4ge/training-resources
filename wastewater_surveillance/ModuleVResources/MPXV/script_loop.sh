# only make these directories if they don't already exist. 
mkdir -p bams trimmed variants depths outputs
freyja update --pathogen MPXV #rerun update just to make sure we're up-to-date

for file in data/*fastq.gz; do
    fname=$(basename $file)
    runName="${fname%%.*}"
    # align
    minimap2 -ax sr assets/ref_mpxv_rivers.fasta "data/${runName}.fastq.gz" | samtools view -bS - > "bams/${runName}.bam"
    samtools sort -o "bams/${runName}.sorted.bam" "bams/${runName}.bam" && samtools index "bams/${runName}.sorted.bam"

    # trim
    ivar trim -x 4 -e -m 80 -i "bams/${runName}.sorted.bam" -b assets/primer_new_v3.bed -p "trimmed/${runName}.trimmed"
    samtools sort -o "trimmed/${runName}.trimmed.sorted.bam" "trimmed/${runName}.trimmed.bam"
    samtools index "trimmed/${runName}.trimmed.sorted.bam"

    # call variants
    freyja variants "trimmed/${runName}.trimmed.sorted.bam" --variants "variants/${runName}.tsv" --depths "depths/${runName}.depth" --ref assets/ref_mpxv_rivers.fasta

    # perform demix step

    freyja demix "variants/${runName}.tsv" "depths/${runName}.depth" --output "outputs/${runName}.demixed.tsv" --pathogen MPXV
done

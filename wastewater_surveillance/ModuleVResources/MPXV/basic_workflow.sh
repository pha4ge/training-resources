mkdir -p bams trimmed variants depths outputs
# align
minimap2 -ax sr assets/ref_mpxv_rivers.fasta data/reads1.fastq.gz | samtools view -bS - > bams/reads1.bam
samtools sort -o bams/reads1.sorted.bam bams/reads1.bam && samtools index bams/reads1.sorted.bam

# trim
ivar trim -x 4 -e -m 80 -i bams/reads1.sorted.bam -b assets/primer_new_v3.bed -p trimmed/reads1.trimmed
samtools sort -o trimmed/reads1.trimmed.sorted.bam trimmed/reads1.trimmed.bam
samtools index trimmed/reads1.trimmed.sorted.bam

# call variants
freyja variants trimmed/reads1.trimmed.sorted.bam --variants variants/reads1.tsv --depths depths/reads1.depth --ref assets/ref_mpxv_rivers.fasta

# perform demix step
freyja update --pathogen MPXV
freyja demix variants/reads1.tsv depths/reads1.depth --output outputs/reads1.demixed.tsv --pathogen MPXV

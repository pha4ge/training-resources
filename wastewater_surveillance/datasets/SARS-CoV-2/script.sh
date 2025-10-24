#!/usr/bin/env bash

mkdir -p bam variants freyja_output
freyja update # update SARS-CoV-2 barcodes

for file in $(ls fastq/*.fastq.gz); do
    base=$(basename $file .fastq.gz)

    # align
    minimap2 -ax sr reference_data/NC_045512_Hu-1.fasta fastq/${base}.fastq.gz | samtools sort -o bam/${base}.bam

    # primer trimming
    ivar trim -i bam/${base}.bam -b reference_data/ARTICv5.3.2.bed -p bam/${base}.trimmed
    samtools sort -o bam/${base}.trimmed.bam bam/${base}.trimmed.bam

    # variant calling
    freyja variants bam/${base}.trimmed.bam --variants variants/${base}_variants.tsv --depths variants/${base}_depths.tsv
    
    # demix
    freyja demix variants/${base}_variants.tsv variants/${base}_depths.tsv --output freyja_output/${base}_demix.tsv --autoadapt
done

# aggregate results
freyja aggregate freyja_output/ --output freyja_output/aggregate.tsv
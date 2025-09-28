#!/usr/bin/env bash

mkdir -p bam
mkdir -p variants
mkdir -p freyja_output

for file in $(ls fastq/*.fastq.gz); do
    base=$(basename $file .fastq.gz)

    minimap2 -ax sr reference_data/NC_045512_Hu-1.fasta fastq/${base}.fastq.gz | samtools sort -o bam/${base}.bam

    ivar trim -i bam/${base}.bam -b reference_data/ARTICv5.3.2.bed -p bam/${base}.trimmed
    samtools sort -o bam/${base}.trimmed.bam bam/${base}.trimmed.bam

    freyja variants bam/${base}.trimmed.bam --variants variants/${base}_variants.tsv --depths variants/${base}_depths.tsv
    freyja demix variants/${base}_variants.tsv variants/${base}_depths.tsv --output freyja_output/${base}_demix.tsv --autoadapt
done

freyja aggregate freyja_output/ --output freyja_output/aggregate.tsv
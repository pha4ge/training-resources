process IVAR_TRIM {
    publishDir "${params.outdir}/Trimmed", mode: 'copy'

    input:
        path primer_bed_file
        each (path bam_file)
        
    output:
        path "${filename}.trimmed.sorted.bam",          emit: bam
        path "${filename}.trimmed.sorted.bam.bai",      emit: bai

    script:
    filename = bam_file.simpleName

    """
    ivar trim -x 4 -e -m 80 -i $bam_file \
        -b $primer_bed_file \
        -p ${filename}.trimmed.bam

    samtools sort --threads $task.cpus \
         -o ${filename}.trimmed.sorted.bam ${filename}.trimmed.bam

    samtools index --threads $task.cpus ${filename}.trimmed.sorted.bam
    """
}


































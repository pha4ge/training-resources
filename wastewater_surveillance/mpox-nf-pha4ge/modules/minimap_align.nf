process MINIMAP_ALIGN {
    publishDir "${params.outdir}/Aligned", mode: 'copy'

    input:
        path fasta_file
        each (path fastq_file)
        
    output:
        path "${filename}.sorted.bam",          emit: bam
        path "${filename}.sorted.bam.bai",      emit: bai

    script:
    filename = fastq_file.simpleName

    """
    minimap2 -ax sr -t $task.cpus $fasta_file $fastq_file | \
        samtools view --threads $task.cpus -bS - | \
        samtools sort --threads $task.cpus -o ${filename}.sorted.bam && \
        samtools index --threads $task.cpus ${filename}.sorted.bam 
    """
}





















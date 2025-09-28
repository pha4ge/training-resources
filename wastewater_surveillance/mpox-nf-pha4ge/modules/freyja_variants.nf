process FREYJA_VARIANT {
    publishDir "${params.outdir}/Variant_calling", mode: 'copy'

    input:
        path fasta_file
        each (path trimmed_bam_file)
        
    output:
        path "${filename}.tsv",          emit: tsv
        path "${filename}.depth",        emit: depth

    script:
    filename = trimmed_bam_file.simpleName

    """
    freyja variants $trimmed_bam_file \
        --variants ${filename}.tsv \
        --depths ${filename}.depth \
        --ref $fasta_file
    """
}





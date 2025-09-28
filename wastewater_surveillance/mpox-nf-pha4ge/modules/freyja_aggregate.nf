process FREYJA_AGGREGATE {
    publishDir "${params.outdir}/Aggregated", mode: 'copy'

    input:
        path tsv_files
        
    output:
        path "bunch_of_files.tsv",      emit: tsv

    script:
    """
    freyja aggregate $tsv_files --output bunch_of_files.tsv
    """
}


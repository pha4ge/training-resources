process FREYJA_AGGREGATE {
    publishDir "${params.outdir}/Aggregated", mode: 'copy'

    input:
        path tsv_files
        
    output:
        path "bunch_of_files.tsv",      emit: tsv

    script:
    """
    mkdir -p aggregate
    cp $tsv_files aggregate/
    freyja aggregate aggregate/ --output bunch_of_files.tsv
    """
}


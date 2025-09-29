process FREYJA_AGGREGATE {
    publishDir "${projectDir}/Results/Aggregated", mode: 'copy'

    input:
        path tsv_file
        
    output:
        path "bunch_of_files.tsv",      emit: tsv

    script:
    """
    freyja aggregate $tsv_files --output bunch_of_files.tsv

    freyja plot $tsv_files --lineages --mincov 4 --output sample_plot.png
    """
}

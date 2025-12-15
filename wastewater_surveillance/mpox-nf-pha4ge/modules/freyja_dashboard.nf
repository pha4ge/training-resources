process FREYJA_DASHBOARD {
    publishDir "${params.outdir}/Dashboard", mode: 'copy'

    input:
        path tsv_file
        path sample_metadata
        
    output:
        path "dashboard.html",      emit: html

    script:
    """
    echo ${params.dashboard_title} > title.txt
    echo ${params.dashboard_desc} > description.txt
    freyja dash $tsv_file $sample_metadata title.txt description.txt --output dashboard.html --mincov 4
    """
}

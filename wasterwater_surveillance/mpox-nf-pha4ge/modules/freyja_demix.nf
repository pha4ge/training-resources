process FREYJA_DEMIX {
    publishDir "${params.outdir}/Demix", mode: 'copy'

    input:
        path tsv_file
        path depth_file
        val pathogen
        
    output:
        path "${filename}.demixed.tsv",      emit: tsv

    script:
    filename = tsv_file.simpleName

    """
    freyja update --pathogen $pathogen

    freyja demix $tsv_file $depth_file \
        --output ${filename}.demixed.tsv \
        --pathogen $pathogen
    """
}









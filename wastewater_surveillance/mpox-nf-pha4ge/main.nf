#!/usr/bin/env nextflow

nextflow.enable.dsl=2

// Import modules into main.nf
include { MINIMAP_ALIGN      } from './modules/minimap_align.nf'
include { IVAR_TRIM          } from './modules/ivar_trim.nf'
include { FREYJA_VARIANT     } from './modules/freyja_variants.nf'
include { FREYJA_DEMIX       } from './modules/freyja_demix.nf'
include { FREYJA_AGGREGATE   } from './modules/freyja_aggregate.nf'
include { FREYJA_DASHBOARD   } from './modules/freyja_dashboard.nf'

// Define the workflow (entry point of the pipeline)
workflow {

    // Define channels using parameters
    fastqFile_ch = Channel.fromPath("${params.fastq_dir}/*.fastq.gz")
    refSeq_ch    = Channel.fromPath(params.ref_genome)
    bedFile_ch   = Channel.fromPath(params.bed_file)
    pathogen_ch  = Channel.value(params.pathogen)
    sample_metadata_ch = Channel.fromPath("${params.metadata_dir}/*.csv")
    
    // Run the first process (MINIMAP_ALIGN) and pass it the input channels
    MINIMAP_ALIGN ( refSeq_ch, fastqFile_ch )

    // Run primer trimming module
    IVAR_TRIM ( bedFile_ch, MINIMAP_ALIGN.out.bam )

    // Run variant calling module
    FREYJA_VARIANT (refSeq_ch, IVAR_TRIM.out.bam)

    // Run demix module
    FREYJA_DEMIX( FREYJA_VARIANT.out.tsv,FREYJA_VARIANT.out.depth, pathogen_ch )

}











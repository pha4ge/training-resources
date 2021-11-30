# **Genomic Epidemiology Educational Materials and Resources**

PHA4GE Bioinformatics Pipelines &amp; Training and Workshop Development Working Group <br/>


## Bioinformatics Resources
### NGS Academy for the Africa Pathogen Genomics Initiative
**[SARS-CoV-2 NGS Training Course 2021 For Africa CDC Virtual Workshop](https://uct-cbio.github.io/ngs-academy/2021/NGS-SARS-CoV-2-past-course)**: The NGS Academy forms part of the Africa PGIThis initiative is funded by the Bill & Melinda Gates Foundation. This training initiatives are carried out in partnership with the African Society for Laboratory Medicine (ASLM)

### CZI/CZBiohub COVID Tracker Resources

<details>
 <summary>Various discussions and lectures regarding genomic epidemiology theory and interpretation resources from CZI/CZBiohub

 </summary>
 
- **[Discussion of the overlapping timescales of pathogen evolution](https://www.youtube.com/watch?v=Bt3JNKfU5qk)** and infectious disease transmission, and how to build phylogenetic trees that visualize genetic divergence.
- **[Discussion on measuring divergence over time](https://www.youtube.com/watch?v=zAtgJjoy6-w)** in order to estimate the average rate of evolution of a pathogen. We also discussed how to use that rate to make phylogenetic trees with branch lengths in units of calendar time.
- **[Discussion on phylogeography](https://www.youtube.com/watch?v=jYpjzP22HcM)**, the technique in genomic epidemiology of inferring spatial migration patterns of a pathogen across the tree. We discussed the inferential procedure that allows this, as well caveats and things to be cautious about.
- **[Seminar on Nextstrain](https://www.youtube.com/watch?v=qllORYfM_z8)**, especially how pipelines are specified in Nextstrain Augur, and different ways to navigate the genomic data visualization in Nextstrain Auspice.
- **[Discussion on consensus genome quality control](https://www.youtube.com/watch?v=eeYgWdRbPPo)**, including different quality metrics, the impact of different quality issues on downstream analyses, and how to look at BAM files to assess support for different sites in the consensus genome.
- **[Discussion on data types and data organization](https://www.youtube.com/watch?v=GJMTNwDKibI)**. We discussed how using data models helps to organize genomic surveillance metadata and specifically mentioned the PHA4GE data specification for SARS-CoV-2. And then Dan Lu walked us through different genomic data structures, what those different structures are useful for, and which repositories each can be submitted to. She finished the talk off with a discussion of handling GISAID rejections and looking at calls in BAM files.
- **[Seminar on phylogenetic nomenclature systems](https://www.youtube.com/watch?v=HVorizRS4wk)**--why we use them and types of systems. We finished off with a more detailed discussion of how the Pango nomenclature system for SARS-CoV-2.
- **[Discussion on the subject of sampling design](https://www.youtube.com/watch?v=ycM50nC5wXk)**. While we don't (yet) have formal frameworks for estimating sample size in genomic epidemiology, today we discussed study design, and specifically how to think about sample selection for different types of genomic epidemiological questions/studies.
- **[Seminar on phylodynamic analysis](https://www.youtube.com/watch?v=a8bp0iHCttA)** - a particular area of genomic epidemiology where we infer changes in pathogen population size from the shapes of coalescent phylogenetic trees.
- **[Discussion on antigenic evolution of viruses](https://www.youtube.com/watch?v=lFJ_2G4u8w4)** - that is, how viral surface proteins can change how they "look" to our immune systems, and in some cases eventually escape our immunity
</details>

### COVID-19 Genomic Epidemiology Toolkit from the Centers for Disease Control and Prevention's Office of Advanced Molecular Disease
**[Public health training webinars](https://www.cdc.gov/amd/training/covid-19-gen-epi-toolkit.html)** meant to further the use of genomics in responding to COVID-19 at the state and local level

### Workflow Development Resources
<details>
 <summary>Various open-source and open-access training materials on workflow development
 </summary>
 
- **[H3ABioNet's Introduction to NextFlow](https://www.h3abionet.org/categories/training/introduction-to-nextflow-workshop-december-2020)**
- **[Carpentries Incubator's Getting Started with SnakeMake](https://carpentries-incubator.github.io/workflows-snakemake/)**
- **[JPI-AMR PHA4GE MRC-CLIMB-BIG-DATA AMR Genomics Training Workshop](https://github.com/fmaguire/amr_training_workshop_practical)** 
- **[Learning WDL and mini-wdl](https://www.youtube.com/watch?v=RtcW2Zdn_28&list=PL4Q4HssKcxYv5syJKUKRrD8Fbd-_CnxTM)**
</details>

### ELIXIR Webinar on Bioconda and BioContainers
**[YouTube webinar](https://www.youtube.com/watch?v=37xYDd7Poy8)**  on the use of BioConda and BioContainers for tool depolyment and sustainability in science

### SARS-CoV-2 Data Analysis and Monitoring with Galaxy
**[Virtual training workshop](https://galaxyproject.eu/event/2021-06-21-sars-cov-2-data-analysis-monitoring-training/#day-1-982021---introduction-to-galaxy)**  to build capacity in SARS-CoV-2 data analysis and data management, including data submission to ENA

### Terra.Bio Training Resources
<details>
 <summary>Various open-source and open-access training materials for the Terra.Bio bioinformatics web application: https://app.terra.bio/
 </summary>
 
- **[COVID-19 workspaces, data and tools in Terra](https://support.terra.bio/hc/en-us/articles/360041068771--COVID-19-workspaces-data-and-tools-in-Terra)**
- **[Theiagen Genomics' Training Videos for SC2 Genomic Analysis on the Terra.Bio Platform](https://www.youtube.com/watch?v=fy0Hm0lfIas&list=PLU47xRg_MKJrtyoFwqGiywl7lQj6vq8Uz)**
</details>

### PHA4GE Contextual Data Curation/Stewardship resources
<details>
 <summary>Resources that form the PHA4GE SARS-CoV-2 contextual data specification package</summary>
 
- **[PHA4GE contextual data specification package and data stewardship training video](https://drive.google.com/file/d/1h8HlMY2wDe3ds5_kHpjsFhusVwQfpR09/view?usp=sharing)**
 - **[Collection template and controlled vocabulary pick lists](https://github.com/pha4ge/SARS-CoV-2-Contextual-Data-Specification/raw/master/PHA4GE%20SARS-CoV-2%20Contextual%20Data%20Template.xlsx)**: Spreadsheet-based collection form containing different fields (identifiers and accessions, sample collection and processing, host information, host exposure, vaccination and reinfection information, lineage and variant information, sequencing, bioinformatics and QC metrics, diagnostic testing information, author acknowledgements). Fields are colour-coded to indicate required, recommended or optional status. Many fields offer pick lists of controlled vocabulary. Vocabulary lists are also available in a separate tab.
- **[Reference guide](https://github.com/pha4ge/SARS-CoV-2-Contextual-Data-Specification/raw/master/PHA4GE%20SARS-CoV-2%20Contextual%20Data%20Template.xlsx)**: Field definitions, guidance, and examples are provided as a separate tab in the collection template .xlsx file.
- **[Curation protocol on protocols.io](https://www.protocols.io/view/pha4ge-contextual-metadata-sop-btpznmp6)**: Step-by-step instructions for using the collection template are provided in a standard operating procedure (SOP). Ethical, practical, and privacy considerations are also discussed. Examples and instructions for structuring sample descriptions as well as sourcing additional standardized terms (outside those provided in pick lists) are also discussed.
- **[Mapping file of PHA4GE fields to metadata standards](https://github.com/pha4ge/SARS-CoV-2-Contextual-Data-Specification/raw/master/PHA4GE%20SARS-CoV-2%20Contextual%20Data%20Template.xlsx)**: PHA4GE fields are mapped to existing metadata standards such as the Sample Application Standard, MIxS 5.0, and the MIGS Virus Host-associated attribute package. Mappings are available in the Reference guide tab. Mappings highlight which fields of these standards are considered useful for SARS-CoV-2 public health surveillance and investigations, and which fields are considered out of scope.
- **[Mapping file of PHA4GE fields to EMBL-EBI, NCBI and GISAID submission requirements](https://github.com/pha4ge/SARS-CoV-2-Contextual-Data-Specification/raw/master/PHA4GE%20to%20Sequence%20Repository%20Field%20Mappings.xlsx)**: Many PHA4GE fields have been sourced from public repository submission requirements. The different repositories have different requirements and field names. Repository submission fields have been mapped to PHA4GE fields to demonstrate equivalencies and divergences. 
- **[Data submission protocol (NCBI) on protocols.io](https://www.protocols.io/view/sars-cov-2-ncbi-submission-workflow-guidance-for-s-bsypnfvn)**: The SARS-CoV-2 submission protocol for NCBI provides step-by-step instructions and recommendations aimed at improving interoperability and consistency of submitted data.
- **[Data submission protocol (EMBL-EBI) on protocols.io](https://www.protocols.io/view/sars-cov-2-ena-submission-workflow-guidance-for-st-buqnnvve)**: The SARS-CoV-2 submission protocol for ENA provides step-by-step instructions and recommendations aimed at improving interoperability and consistency of submitted data.
- **[Data submission protocol (GISAID) on protocols.io](https://www.protocols.io/view/sars-cov2-gisaid-submission-protocol-bumknu4w)**: The SARS-CoV-2 submission protocol for GISAID provides step-by-step instructions and recommendations aimed at improving interoperability and consistency of submitted data.
- **[JSON structure of PHA4GE specification](https://raw.githubusercontent.com/pha4ge/SARS-CoV-2-Contextual-Data-Specification/master/PHA4GE_SARS-CoV-2_Contextual_Data_Schema.json)**: A JSON structure of the PHA4GE specification has been provided for easier integration into software applications.

</details>
<details>
 <summary>Supplemental resources for the PHA4GE SARS-CoV-2 contextual data specifiation package</summary>
 
- **[multiSub](https://github.com/maximilianh/multiSub)**: Command-line tool for interchange of public repository submission formats
- **[Micro Binfie podcast](https://soundcloud.com/microbinfie/26-sars-cov-2-metadata#t=0:00)**: Features discussion with PHA4GE members about specification package
- **[PHA4GE Preprint](https://www.preprints.org/manuscript/202008.0220/v1)**: Overview of specification package
- **[PHA4GE template in the DataHarmonizer](https://github.com/Public-Health-Bioinformatics/DataHarmonizer/releases)**: Javascript application enabling standardized data entry, validation and export of contextual data as submission-ready forms for GISAID and NCBI.
 </details>

mpox-nf/
│-- main.nf
│-- nextflow.config
│-- modules/
│   ├── freyja_aggregate 
│   ├── freyja_demix.nf 
│   ├── freyja_plot
│   ├── ivar_trim.nf
│   ├── minimap_align.nf
│-- data/
│   ├── ref_files/
│   │   ├── ref_mpxv_rivers.fasta
│   │   ├── primer_new_v3.bed
│   ├── fastq_files/
│   │   ├── reads0.fastq.gz
│   │   ├── reads1.fastq.gz
│   │   ├── reads2.fastq.gz
│   │   ├── reads3.fastq.gz
│   │   ├── reads4.fastq.gz




wget -O dataset.zip https://github.com/joshuailevy/pha4ge_tutorial/archive/refs/heads/main.zip

unzip dataset.zip "pha4ge_tutorial-main/MPXV/data/*" "pha4ge_tutorial-main/MPXV/assets/*" -d .


wget -O dataset.zip https://github.com/joshuailevy/pha4ge_tutorial/archive/refs/heads/main.zip && unzip dataset.zip "pha4ge_tutorial-main/MPXV/data/*" "pha4ge_tutorial-main/MPXV/assets/*" -d . && mv pha4ge_tutorial-main/MPXV/data ./data/fastq_files && mv pha4ge_tutorial-main/MPXV/assets ./data/ref_files && rm -rf pha4ge_tutorial-main dataset.zip










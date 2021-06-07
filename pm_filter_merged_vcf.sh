

 ### Running samples through the pipeline 
 ### STEP 3 
 ### Filter merged VCFs

 ## From merged vcf - filtered vcf
 ## Using the P. malariae SNP training set 

 # First ensure you have the fastq2matrix environment set up (created by Jody)
 # conda activate fastq2matrix

 # Don't need to run this in parallel

# Run this script in the genomics_db location where you want the vcfs to be saved




python ~/software/fastq2matrix/scripts/filter_merged_vcf.py \
    --merged-file genomics_db_v2.2021_06_04.genotyped.vcf.gz \
    --prefix Pm_db_v2.filt \
    --ref ~/genomes/pm/Pmalariae_fullgenome.fasta \
    --bqsr-vcf ~/Pmalariae/training_set/Pm_trainingset_nonrefmaf0.09.qual356.missing0.1.vcf.gz \
    --include-region ~/genomes/pm/Pmalariae_fullgenome_bedfile.bed \
    --vqslod 0 \
    --missing-sample-cutoff 0.5 \
    --cutoff-mix-GT 0.8 \
    --gff-file ~/genomes/pm/Pmalariae_fullgenome.modified.gff3

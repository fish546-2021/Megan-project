# Megan-project
Class project for FISH 546 winter 2021

##### Software information
- OS: macOS Big Sur Version 11.2 (20D64)
- RStudio Version 1.3.959
- kallisto 0.46.2
- FastQC v0.11.9 (Win/Linux)

### RNA seq data: coho salmon treated with a steroid and looked at gonadal transcriptional alterations
 Data courtesy of Chris Monson (UW) and Giles Goetz (NOAA)

##### Data Location
The subset of data used for the week 5 draft product can be found [here](https://gannet.fish.washington.edu/mewing0/)
- The subset of files are `17104-02RT-01-13_S21_L003_R1_001.fastq.gz` and `17104-02RT-01-13_S21_L003_R2_001.fastq.gz`
  - The `R1` or `R2` in the file names correspond to the read ends
  - The sequences of the adapters used in library prep are `R1` : `AGATCGGAAGAGCACACGTCTGAACTCCAGTCA` and `R2`: `AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT`.

### General Workflow
As of February 11th, 2021, Week 5

###### 1. Giles tranferred the files from a NOAA server to `fish546@ostrich.washington.edu:Documents/Files_Giles_Uploaded_For_Chris`
  - The md5sums for this transfer are found in `/analyes/0128-Giles-md5sums.txt`


###### 2. I used `rsync` to copy data to local directory from `fish546@ostrich.washington.edu:Documents/Files_Giles_Uploaded_For_Chris` The process of this is in the file `/code/0208-rsyncFilesToExternalStorage-terminal.txt`. The external storage path was determined in `/code/0208-externalStoragePath-terminal.txt`

###### 3. md5sums were calculated for each of the copied files to ensure file integrity. The code for this can be found in `/code/0209-md5sums.ipynb`
  - The md5sums output can be found in `/analyses/0209-md5sums.txt`
  - Note: not all of the files were unchanged so only two of the in-tact files were used as a subset of data for subsequent steps: `17104-02RT-01-13_S21_L003_R1_001.fastq.gz` and `17104-02RT-01-13_S21_L003_R2_001.fastq.gz`


###### 4. Sequence quality was looked at using fastqc, the process can be found in the file `/code/0210-fastqc.ipynb`

  - `/analyses/0210-fastqc/` is a subdirectory containing the fastqc results from running fastqc on a subset of files: `17104-02RT-01-13_S21_L003_R1_001.fastq.gz` and `17104-02RT-01-13_S21_L003_R2_001.fastq.gz`
  - `/analyses/0210-fastqc/17104-02RT-01-13_S21_L003_R1_001_fastqc.zip` is the zip file fastqc results for the file `17104-02RT-01-13_S21_L003_R1_001.fastq.gz`

  - `/analyses/0210-fastqc/17104-02RT-01-13_S21_L003_R1_001_fastqc/` is the above file unzipped and contains the following
    - Base statistics: `fastqc_data.txt`
    - HTML report: `fastqc_report.html`
    - Summary of results: `summary.txt`
    - Images of results in: `images` folder
    - Fastqc icons in: `icons` folder

  - The HTML file for the fastqc results is :`/analyses/0210-fastqc/17104-02RT-01-13_S21_L003_R1_001_fastqc.html`

  - `/analyses/0210-fastqc/17104-02RT-01-13_S21_L003_R2_001_fastqc.zip` is the zip file fastqc results for the file `17104-02RT-01-13_S21_L003_R2_001.fastq.gz`

  - `/analyses/0210-fastqc/17104-02RT-01-13_S21_L003_R2_001_fastqc/` is the above file unzipped and contains the following
      - Base statistics: `fastqc_data.txt`
      - HTML report: `fastqc_report.html`
      - Summary of results: `summary.txt`
      - Images of results in: `images` folder
      - Fastqc icons in: `icons` folder

  - The HTML file for the fastqc results is :`/analyses/0210-fastqc/17104-02RT-01-13_S21_L003_R1_001_fastqc.html`

###### 5. A (failed) attempt at trimming was made, as seen in the file `0210-trimSequences.ipynb`
  - There was no output because it was unsuccessful :(


###### 6. Untrimmed files were quantified using Kallisto in the file `/code/0210-kallisto.ipynb`
  -  `/analyses/0210-kallisto.idx` Is the index used to run kallisto

  - `/analyses/output/` is the subdirectory containing kallisto results and contains the following
    - `/analyses/output/abundance.tsv` which is the quantified sequence output
    - `/analyses/output/run_info.json` is the kallisto run information


### Next Steps: Weeks 6-10
- Figure out why some files didn't sync properly when transferring to local directory using `rsync`
  - Get them to sync properly and regenerate md5sums
- Trimming sequences (successfully)
  - Use `multiqc` to concatenate all fastqc reports and determine what needs to be trimmed
- Scale up workflow to all data files
- Interpret Kallisto results
- Tie quantified sequences results back into experimental context in order to understand "what the data is telling us"

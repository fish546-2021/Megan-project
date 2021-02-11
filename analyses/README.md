# Megan-project
Class project outputs and analyses for FISH 546 winter 2021

Code output files and preliminary result files are located in this directory in the naming scheme `MMDD-description` while subdirectories and their contents are in the naming scheme default for that product.

- `0128-Giles-md5sums.txt` are the md5sums Giles Goetz provided after transferring files from the NOAA servers to `fish546@ostrich.washington.fish.edu:Documents/`

- `0209-md5sums.txt` is the md5sum output file from transferring files from ostrich ssh to my local directory.

- `0210-fastqc` is a subdirectory containing the fastqc results from running fastqc on a subset of files: `17104-02RT-01-13_S21_L003_R1_001.fastq.gz` and `17104-02RT-01-13_S21_L003_R2_001.fastq.gz`
  - `17104-02RT-01-13_S21_L003_R1_001_fastqc.zip` is the zip file fastqc results for the file `17104-02RT-01-13_S21_L003_R1_001.fastq.gz`

  - `17104-02RT-01-13_S21_L003_R1_001_fastqc` is the above file unzipped and contains the following
    - Base statistics: `fastqc_data.txt`
    - HTML report: `fastqc_report.html`
    - Summary of results: `summary.txt`
    - Images of results in: `images` folder
    - Fastqc icons in: `icons` folder

  - The HTML file for the fastqc results is :`17104-02RT-01-13_S21_L003_R1_001_fastqc.html`

  - `17104-02RT-01-13_S21_L003_R2_001_fastqc.zip` is the zip file fastqc results for the file `17104-02RT-01-13_S21_L003_R2_001.fastq.gz`

  - `17104-02RT-01-13_S21_L003_R2_001_fastqc` is the above file unzipped and contains the following
      - Base statistics: `fastqc_data.txt`
      - HTML report: `fastqc_report.html`
      - Summary of results: `summary.txt`
      - Images of results in: `images` folder
      - Fastqc icons in: `icons` folder

  - The HTML file for the fastqc results is :`17104-02RT-01-13_S21_L003_R1_001_fastqc.html`

- `0210-kallisto.idx` Is the index used to run kallisto

- `output` is the subdirectory containing kallisto results and contains the following
  - `abundance.tsv` which is the quantified sequence output
  - `run_info.json` is the kallisto run information

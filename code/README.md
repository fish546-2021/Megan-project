# Megan-project
Class project code for FISH 546 winter 2021

Files are named in the format of `MMDD-description`

Files that are plain text exports of terminal screens have `-terminal` at the end of the file name :)

## Workflow Description
1. Used `rsync` to copy data to local directory from `fish546@ostrich.washington.edu:Documents/Files_Giles_Uploaded_For_Chris` The process of this is in the file `0208-rsyncFilesToExternalStorage-terminal.txt`. The external storage path was determined in `0208-externalStoragePath-terminal.txt`

2. md5sums were calculated for each of the copied files to ensure file integrity. The code for this can be found in `0209-md5sums.ipynb`

Note: not all of the files were unchanged so only two of the in-tact files were used as a subset of data for subsequent steps

3. Sequence quality was looked at using fastqc, the process can be found in the file `0210-fastqc.ipynb`

4. A (failed) attempt at trimming was made, as seen in the file `0210-trimSequences.ipynb`

5. Untrimmed files were quantified using Kallisto in the file `0210-kallisto.ipynb`

#!/bin/bash
## 0225-md5sumsCheck
#SBATCH --job-name=0225-md5sumsCheck
## Allocation Definition
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=0-12:00:00
## Memory per node
#SBATCH --mem=120G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mewing0@uw.edu
## Specify the working directory for this job
#SBATCH --chdir=/gscratch/scrubbed/mewing0


source /gscratch/srlab/programs/scripts/paths.sh

md5sum -c /gscratch/srlab/mewing0/

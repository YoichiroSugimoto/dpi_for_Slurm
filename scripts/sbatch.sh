#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=3-00:00:0
#SBATCH --mem=8G
#SBATCH --partition=cpu

if [ "${PATH_OVERRIDE}" != "" ]; then
  PATH=${PATH_OVERRIDE}
fi

echo started... $RAKE_TARGET
rake $RAKE_TARGET
echo ...finished.



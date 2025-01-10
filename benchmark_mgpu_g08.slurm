#!/bin/bash
#SBATCH -J mpi_check -p normal
#SBATCH --nodes=8 --ntasks-per-node=4 --cpus-per-task=10
#SBATCH --gres=gpu:4
#SBATCH --account GOV109211
#SBATCH --mem-bind=no

module use /work/p00lcy01/pubmodules        
ml openmpi/5.0.6
ml python/3.12.8
source /work/p00lcy01/venv/cuq24_py312/bin/activate
mpirun python banchmark_qsvm_tnsm-mpi_mgpu.py
echo "---- Walltime: ${SECONDS} sec."

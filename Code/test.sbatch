#!/usr/bin/env bash
#SBATCH --mem  5GB
#SBATCH --gres gpu:1
#SBATCH --cpus-per-task 4
#SBATCH --time 48:00:00
#SBATCH --constrain "shire"
#SBATCH --mail-type FAIL
#SBATCH --mail-user tibbe@kth.se
#SBATCH --output /Midgard/home/%u/Amodal-Bayesian/logs/%J_slurm.out
#SBATCH --error  /Midgard/home/%u/Amodal-Bayesian/logs/%J_slurm.err

echo "Starting job ${SLURM_JOB_ID} on ${SLURMD_NODENAME}"
nvidia-smi
. ~/miniconda3/etc/profile.d/conda.sh
conda activate amodal
python testing.py
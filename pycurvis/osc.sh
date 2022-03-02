#!/bin/bash
#
#SBATCH --job-name=cat2sph-100epoch-block-continue
#SBATCH --output="log/osc/block_job%j.out"
#SBATCH --signal=USR1@120
#
#SBATCH --nodes=1 --ntasks-per-node=8 --gpus-per-node=1 --mem=32gb
#SBATCH --time=6:00:00
#
#SBATCH --account=PAS0027

# find project dir
cd $HOME/project/curvis/pycurvis

# prep software
module load cuda/10.2.89
module load miniconda3
source activate vis

# execute job
srun python train_block.py --nncfg=nn_block.yaml --resume
# python test.py --testcfg=cfg/nntest_curv.yaml
# python mem.py
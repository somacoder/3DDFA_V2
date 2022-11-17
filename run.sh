#!/bin/bash

source ~/anaconda3/etc/profile.d/conda.sh
conda deactivate
conda activate 3DDFA_V2

python demo.py -f examples/inputs/bob.jpg -o 3d
python demo.py -f examples/inputs/bob.jpg -o obj
python demo.py -f examples/inputs/bob.jpg -o 2d_sparse

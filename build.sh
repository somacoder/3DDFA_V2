#!/bin/bash

source ~/anaconda3/etc/profile.d/conda.sh
conda deactivate 3DDFA_V2
conda env remove -n 3DDFA_V2
conda env create -f environment.yml
conda activate 3DDFA_V2

cd FaceBoxes
sh ./build_cpu_nms.sh
cd ..

cd Sim3DR
sh ./build_sim3dr.sh
cd ..

cd utils/asset
gcc -shared -Wall -O3 render.c -o render.so -fPIC
cd ../..

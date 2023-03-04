#!/bin/bash
MODEL="progan stylegan2"
CLASS="0_real 1_fake"

for i in $MODEL 
do 
    for j in $CLASS 
    do
        CUDA_VISIBLE_DEVICES=0 python main.py -m weights/gandetection_resnet50nodown_$i.pth  -i ../media-analysis-project-main/data/CNN_synth_testset/deepfake/$j/ -o out_deepfake_$j"_"$i.csv
    done
done
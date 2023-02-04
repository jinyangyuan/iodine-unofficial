#!/bin/bash

function run_model {
    folder_data='../../compositional-scene-representation-datasets/tf/'$name
    path_config='config_'$name'_nc.yaml'
    folder_log='logs_nc/'$name
    folder_out='outs_nc/'$name
    python $run_file \
        --path_config $path_config \
        --folder_data $folder_data \
        --folder_log $folder_log \
        --folder_out $folder_out \
        --train
}

run_file='../src/main.py'

for name in 'mnist' 'dsprites' 'abstract' 'clevr' 'shop' 'gso'; do
    run_model
done

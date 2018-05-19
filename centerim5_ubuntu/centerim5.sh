#!/bin/bash


if [ ! -d $HOME/.centerim5 ]; then
    mkdir -p $HOME/.centerim5
fi


docker run --rm -it \
    -v $HOME/.centerim5:/root/.centerim5 \
    centerim5_ubuntu:latest

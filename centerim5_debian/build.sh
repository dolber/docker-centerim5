#!/bin/bash

NOW="$(date +%F_%H.%M.%S)"

if [ ! -d logs ]; then
    mkdir -p logs
fi

if [ ! -d centerim5 ]; then
    git clone -b mob git+ssh://mob@repo.or.cz/srv/git/centerim5.git
fi

# docker build --no-cache -t centerim5_debian .  1>> logs/build_$NOW.txt 2>>logs/build_err_$NOW.txt
docker build -t centerim5_debian .  1>> logs/build_$NOW.txt 2>>logs/build_err_$NOW.txt



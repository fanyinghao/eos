#!/bin/bash

if [ ! -d $(pwd)/nodeos-data/data ]; then
        docker run --rm -d -p 8888:8888 -p 9876:9876 --name nodeosd -v $(pwd)/nodeos-data:/eos-work myeos:v1.2.4 nodeos --config-dir /eos-work/config --data-dir /eos-work/data --genesis-json /eos-work/config/mainnet.json
    else
        docker run --rm -d -p 8888:8888 -p 9876:9876 --name nodeosd -v $(pwd)/nodeos-data:/eos-work myeos:v1.2.4 nodeos --config-dir /eos-work/config --data-dir /eos-work/data
fi

alias cleos='docker exec -it nodeosd cleos'
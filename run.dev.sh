#!/bin/bash

if [ ! -d $(pwd)/nodeos-data-dev/data ]; then
        docker run --rm -d -p 888:888 -p 987:987 --name nodeosd-dev -v $(pwd)/nodeos-data-dev:/eos-work eosio/eos-dev nodeos --config-dir /eos-work/config --data-dir /eos-work/data --genesis-json /eos-work/config/kylin.json
    else
        docker run --rm -d -p 888:888 -p 987:987 --name nodeosd-dev -v $(pwd)/nodeos-data-dev:/eos-work eosio/eos-dev nodeos --config-dir /eos-work/config --data-dir /eos-work/data
fi

alias cleos-dev='docker exec -it nodeosd-dev cleos'
alias eosiocpp='docker exec -it nodeosd-dev eosiocpp'
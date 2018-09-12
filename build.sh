#!/bin/bash

docker build -t myeos:v1.2.4 --build-arg branch=v1.2.4 --build-arg symbol=EOS .

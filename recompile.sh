#!/bin/bash

rm -rf Resume.pdf
docker run --rm -v `pwd`:/data christman-resume:latest make
docker run --rm -v `pwd`:/data christman-resume:latest make clean

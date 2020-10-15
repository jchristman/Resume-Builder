#!/bin/bash

rm Resume.pdf
docker run --rm -v `pwd`:/data christman-resume:latest make
docker run --rm -v `pwd`:/data christman-resume:latest make clean
open Resume.pdf

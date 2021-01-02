#!/bin/bash

rm Resume.pdf
docker run --rm -v `pwd`:/data christman-resume:latest make
docker run --rm -v `pwd`:/data christman-resume:latest make clean
$(which open xdg-open | head -n 1) Resume.pdf

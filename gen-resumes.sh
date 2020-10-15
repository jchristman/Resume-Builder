#!/bin/bash

./build.sh

template_file=$1
companies_file=$2

while read line;
do
    echo Building resume for $line
    cat $template_file | sed -e "s/COMPANYNAME/$line/g" > Resume.tex
    ./recompile.sh 2>&1 >log.txt
done < "$companies_file"

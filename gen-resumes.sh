#!/bin/bash

./build.sh

dos2unix $1 $2
template_file=$1
companies_file=$2

while read line;
do
    echo Building resume for $line
    cat $template_file | sed -e "s/COMPANYNAME/$line/g" > Resume.tex
    ./recompile.sh 2>&1 >log.txt
    mkdir -p "Final Resumes"
    mv Resume.pdf "Final Resumes/$line-Resume.pdf"
done < "$companies_file"

find Final\ Resumes -name "*.pdf" -print0 | xargs -0 -n 1 xdg-open

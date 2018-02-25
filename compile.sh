#! /bin/bash

pandoc --filter pandoc-crossref --filter pandoc-citeproc -s \
    -f markdown --toc -o doc.pdf \
    `sed 's/$/.md/g;s/^/src\//g' src/sections.conf | xargs`;

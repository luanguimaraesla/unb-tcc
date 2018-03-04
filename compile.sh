#! /bin/bash

PATH=$PATH:/root/.cabal/bin

pandoc --filter pandoc-crossref --filter pandoc-citeproc -s \
    -f markdown --include-in-header src/header.tex --toc -o doc.pdf \
    `sed 's/$/.md/g;s/^/src\//g' src/sections.conf | xargs`;

#! /bin/bash

PATH=$PATH:/root/.cabal/bin

pandoc  --template templates/tcc.latex -s \
        --filter pandoc-crossref \
        --filter pandoc-citeproc \
        -f markdown --toc -o doc.pdf \
        `sed 's/$/.md/g;s/^/src\//g' src/sections.conf | xargs`;

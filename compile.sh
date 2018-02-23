#! /bin/bash

pandoc -s -f markdown+tex_math_double_backslash -o doc.pdf \
    `sed 's/$/.md/g;s/^/src\//g' src/sections.conf | xargs`;

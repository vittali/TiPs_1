#!/bin/zsh
asciidoctor -D ../build **/*.adoc
rsync -a --verbose --perms --times  --prune-empty-dirs  images ../build
# linkcheck -e --no-show-redirects http://localhost:8080/TiPs_1/index.html
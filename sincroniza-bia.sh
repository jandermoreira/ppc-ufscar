#!/bin/bash
# Inicia o meld para os arquivos compartilhados
# Jander, 2025

files=$(echo ppc-ufscar.{sty,cls} ppc-ufscar-*.code.tex)
for f in $files; do
  argumentos=$(echo $argumentos --diff $f ~/graduacao/ppc-bia-2025/$f)
done
eval meld $argumentos

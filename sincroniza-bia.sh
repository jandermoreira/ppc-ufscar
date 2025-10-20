#!/bin/bash
# Inicia o meld para os arquivos compartilhados
# Jander, 2025

# pcc-ufscar
arqsppc=$(echo ppc-ufscar.{sty,cls} ppc-ufscar-*.code.tex)
for f in $arqsppc; do
  argumentos=$(echo $argumentos --diff $f ~/graduacao/ppc-bia-2025/$f)
done

# attrtoolbox
arqsattr=attrtoolbox.sty
for f in $arqsattr; do
  argumentos=$(echo $argumentos --diff ~/texmf/tex/latex/local/attrtoolbox/$f ~/graduacao/ppc-bia-2025/$f)
done

eval meld $argumentos

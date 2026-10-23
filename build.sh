#!/bin/sh
# Gera index.html (página completa para GitHub Pages ou abrir no navegador) a partir de src/truco.html
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="pt-BR">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<style>body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  cat src/truco.html
  printf '\n</body>\n</html>\n'
} > index.html

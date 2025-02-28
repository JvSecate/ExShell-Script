#!/bin/bash

# URL
echo "Insira a url da noticia" 
read url

# Obter conteudo da url
conteudo=$(curl -s "$url")

# Extrair o titulo
titulo=$(echo "$conteudo" | grep -o '<h2>.*</h2>' | sed 's/<[^>]*>//g')

# Checar se tem um titulo
if [ -n "$titulo" ]; then
    # Exibe o titulo
    echo "Titulo: $titulo"
else
    echo "Nenhum titulo encontrado"
fi

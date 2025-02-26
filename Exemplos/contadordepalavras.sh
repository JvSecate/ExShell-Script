#!/bin/bash
echo "Insira o arquivo .txt que deseja contar"
read txt

contador=$(wc -w < "$txt")
echo "Total de palavras em $txt: $contador"

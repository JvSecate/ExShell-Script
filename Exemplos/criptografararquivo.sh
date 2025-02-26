#!/bin/bash

# Criptografar
criptografar() {
  input="$1"
  output="$2"
  chave="$3"

  openssl enc -aes-256-cbc -salt -in "$input" -out "$output" -pass pass:"$chave"
  echo "Arquivo criptografado e salvo em $output"
}

# Descriptografar
descrip() {
  input="$1"
  output="$2"
  chave="$3"

  openssl enc -d -aes-256-cbc -in "$input" -out "$output" -pass pass:"$chave"
  echo "Arquivo descriptografado e salvo em $output"
}

# Menu
echo "Selecione uma opcao:"
echo "1. Criptografar arquivo"
echo "2. Descriptografar arquivo"
read opc

case "$opc" in
  1)
    echo "Insira o arquivo "
    read input
    echo "Insira a saida: "
    read output
    echo "Insira uma chave: "
    read -s chave
    criptografar "$input" "$output" "$chave"
    ;;
  2)
    echo "Insira o arquivo "
    read input
    echo "Insira a saida: "
    read output
    echo "Insira uma chave: "
    read -s chave
    descrip "$input" "$output" "$chave"
    ;;
  *)
    echo "Opcao invalida"
    ;;
esac


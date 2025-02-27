#!/bin/bash

read -p "Insira a palavra: " palavra
read -p "Arquivo para ler: " arquivo

if grep -q "$palavra" "$arquivo"; then
  echo "A palavra '$palavra' foi encontrada em '$arquivo'."
else
  echo "A palavra '$palavra' nao foi encontrada em '$arquivo'."
fi

#!/bin/bash
read -p "Insira sua senha: " senha

#Verifica se possui letras maiusculas, minusculas, numeros, simbolos e maior que 8
if [ $(echo "$senha" | awk 'length >= 8 && /[A-Z]/ && /[a-z]/ && /[0-9]/ && /[!@#$%^&*]/') ]; then
  echo "A senha e forte."
else
  echo "A senha e fraca."
fi

#!/bin/bash

adicao() {
  result=$(echo "$1 + $2" | bc)
  echo "Resultado: $result"
}

subtracao() {
  result=$(echo "$1 - $2" | bc)
  echo "Resultado: $result"
}

multiplic() {
  result=$(echo "$1 * $2" | bc)
  echo "Resultado: $result"
}

divisao() {
  if [ "$2" -eq 0 ]; then
    echo "Erro: Divisao por 0."
  else
    result=$(echo "scale=2; $1 / $2" | bc)
    echo "Resultado: $result"
  fi
}

# Menu
echo "Selecione a operacao"
echo "1. Addicao"
echo "2. Subtracao"
echo "3. Multiplicacao"
echo "4. Divisao"
read opc

echo "Primeiro numero:"
read num1
echo "Segundo numero:"
read num2

case $opc in
  1)
    adicao "$num1" "$num2"
    ;;
  2)
    subtracao "$num1" "$num2"
    ;;
  3)
    multiplic "$num1" "$num2"
    ;;
  4)
    divisao "$num1" "$num2"
    ;;
  *)
    echo "Opcao invalida."
    ;;
esac

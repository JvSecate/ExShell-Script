#!/bin/bash
read -p "Insira o tamanho da senha: " tam
senha=$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | head -c "$tam")
echo "Senha gerada: $senha"

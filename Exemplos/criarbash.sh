#!/bin/bash
echo Insira o nome do script
read nome
touch $nome.sh
chmod +x $nome.sh
nano $nome.sh

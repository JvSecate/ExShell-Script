#!/bin/bash

# Checa se nmap esta instalado
if ! command -v nmap &> /dev/null; then
    	echo "Nmap nao instalado, Pressione qualquer tecla para instalar."
	read -s -n 1
	sudo apt-get update
	sudo apt-get install nmap
	exit 1
fi

# Escanear o endereco ip
escanear() {
	local ip="$1"
    	local opc="$2"

    	sudo nmap "$opc" "$ip"
}

# Input
read -p "Insira o ip a ser escaneada: " ip
echo "Selecione o tipo de scan"
echo "[1] Scan normal"
echo "[2] Scan rapido"
echo "[3] Scan intenso"
echo "[4] Identificar SO"
read op;

case "$op" in
    	1)
        	escanear "$ip"
        	;;
    	2)
		escanear "$ip" "-T4 -F"
        	;;
    	3)
		escanear "$ip" "-T4 -A -v"

        	;;
    	4)
        	escanear "$ip" "-T4 -O -F"
        	;;
	*)
		echo "Opcao invalida"
		;;
esac

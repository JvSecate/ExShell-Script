#!/bin/bash
read -p 'Insira o url do site que deseja testar e abir: ' url
ping -c 3 "$url"
if [ $? -eq 0 ]; then
	echo "Ping bem-sucedido. Pressione qualquer tecla para continuar ao site"
	read -s -n 1
	xdg-open https://$url
else
	echo "Ping falhou. Nao foi possivel alcancar $url."
fi

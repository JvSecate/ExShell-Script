#!/bin/bash

# Define o arquivo das urls
url_file="urls.txt"

# Mostrar urls
display_urls() {
	echo "List of Websites:"
	echo "-----------------"
	local cont=1
	while read -r line; do
		echo "$cont. " "$line"
		((cont++))
    	done < "$url_file"
}

# Abrir urls
open_url() {
    	local selected_url="$1"
    	xdg-open https://"$selected_url"
}

# Adciona a url
if [ ! -e "$url_file" ]; then
	touch "$url_file"
fi

while true; do
    	clear
    	echo "Lista de Sites"
    	echo "---------------"
    	echo "1. Adicionar Site"
   	echo "2. Listar Sites"
   	echo "3. Abrir site"
    	echo "4. Sair"
    	read opc

    	case $opc in
        	1)
            		read -p "Insira a URL do site: " new_url
            		echo "$new_url" >> "$url_file"
            		echo "URL Adcionada."
			read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
            		;;
        	2)
            		display_urls
            		read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
            		;;
		3)
            		display_urls
            		read -p "Selecione o site que deseja abrir: " url_number
            		selected_url=$(sed -n "${url_number}p" "$url_file")
            		if [ -n "$selected_url" ]; then
                		open_url "$selected_url"
            		else
                		echo "Opcao invalida."
            		fi
            		read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
            		;;
		4)
            		exit 0
            		;;
        	*)
            		echo "Opcao invalida."
            		read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    			;;
    	esac
done

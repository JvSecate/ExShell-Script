#!/bin/bash
echo Insira o arquivo que deseja compilar
read arquivo

extensao="${arquivo##*.}"

# 
if [ "$extensao" == "cpp" ]; then
	g++ $arquivo
	./a.out
elif [ "$extensao" == "c" ]; then
	gcc $arquivo
	./a.out
elif [ "$extensao" == "py" ]; then
	python3 $arquivo
else
	echo "Extensao desconhecida: .$extensao"
fi

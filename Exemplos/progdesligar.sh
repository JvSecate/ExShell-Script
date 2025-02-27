#!/bin/bash

read -p "Insira o horario para desligar: " tempo_desligar

tempo_atual=$(date +%H:%M)
min_desligar=$(date -d "$tempo_desligar" +%s)
min_atual=$(date -d "$tempo_atual" +%s)
min_restantes=$((min_desligar - min_atual))

sudo shutdown -h $min_restantes



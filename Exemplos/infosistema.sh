#!/bin/bash
echo "Informacao de sistema:"
echo "=============================================="
uname -a
echo "CPU:"
echo ""
lscpu
echo "=============================================="
echo "Memoria:"
echo ""
free -m
echo "=============================================="
echo "Disco:"
echo ""
df -h
echo "=============================================="


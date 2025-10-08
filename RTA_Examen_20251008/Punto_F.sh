#!/bin/bash
#
#Punto F
#
#Filtros básicos
#

echo "--- CREAR DIRECTORIO ---"

sudo mkdir -p ~/Punto_F

echo "--- CREAR BLOC DE NOTAS ---"

grep "MemTotal" /proc/meminfo > ~/Punto_F/Filtro_basico.txt
grep "model name" /proc/cpuinfo | head -n 1 >> ~/Punto_F/Filtro_basico.txt
grep "cpu mhz" /proc/cpuinfo | head -n 1 >> ~/Punto_F/Filtro_basico.txt

echo "--- VERIFICACIÓN ---"

cat ~/Punto_F/Filtro_basico.txt



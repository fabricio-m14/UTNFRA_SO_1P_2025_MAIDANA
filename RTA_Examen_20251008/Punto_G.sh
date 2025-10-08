#!/bin/bash
#
#Punto G
#
#Filtros avanzados
#

echo "--- CREANDO DIRECTORIO ---"

sudo mkdir -p ~/Punto_G

echo "--- CREANDO FILTRO AVANZADO ---"

echo "--- MI IP PÚBLICA ES: $(curl -s ifconfig.me)" > ~/Punto_G/Filtro_Avanzado.txt

CPU_INFO=$(grep "model name" /proc/cpuinfo | head -1 | awk -F: '{print $2}')
FREQ=$(grep "cpu MHz" /proc/cpuinfo | head -1 | awk -F: '{printf "%.2fGHz", $2/1000}')

echo "--- CPU: ${CPU_INFO} FRECUENCIA: ${FREQ}" >> ~/Punto_G/Filtro_Avanzado.txt

echo "--- VERIFICACIÓN ---"

cat ~/Punto_G/Filtro_Avanzado.txt


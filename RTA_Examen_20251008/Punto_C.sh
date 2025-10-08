#!/bin/bash
#
#Punto C - Usuarios_Grupos
#
#Creación de Usuarios
#

echo "--- CREAR GRUPOS ---"

sudo groupadd p1c1_2025_g1
sudo groupadd p1c1_2025_gTodos

echo "--- GRUPOS CREADOS ---"

echo "--- OBTENER HASH DE LA CLAVE ---"

HASH= $(sudo grep 'vagrant' /etc/shadow | cut -d ':' -f 2)

echo "--- EL HASH ES: $HASH ---"

echo "--- CREAR USUARIOS ---"

sudo useradd -m -s /bin/bash -p "$HASH" -G p1c1_2025_g1 p1c1_2025_u1
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c1_2025_gTodos p1c1_2025_u2
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c1_2025_gTodos p1c1_2025_u3

echo "--- USUARIOS CREADOS EXITOSAMENTE ---"

echo "--- VERIFICACIÓN ---"

getent passwd | grep p1c1_2025
getent group | grep p1c1_2025


#!/bin/bash
#
#Punto C - Creación de usuarios y grupos
#
#Crear usuarios y grupos
#

echo "--- CREAR GRUPOS ---"

sudo groupadd p1c1_2025_g1
sudo groupadd p1c1_2025_gTodos

echo "--- GRUPOS CREADOS CON ÉXITO ---"

echo "--- OBTENER HASH DE LA CLAVE ---"

HASH=$(sudo grep vagrant /etc/shadow | cut -d: -f2)

echo "--- EL HASH ES: $HASH ---"

echo "--- CREAR USUARIO ---"

sudo useradd -m -s /bin/bash -p "$HASH" -G p1c1_2025_g1 p1c1_2025_u1
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c1_2025_g1 p1c1_2025_u2
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c1_2025_gTodos p1c1_2025_u3

echo "--- USUARIOS CREADOS CON ÉXITO ---"

echo "--- VERIFICACIÓN ---"

getent passwd | grep p1c1_2025
getent group | grep p1c1_2025

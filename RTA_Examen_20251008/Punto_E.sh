#!/bin/bash
#
#Punto E
#
#Permisos y Owners
#

echo "--- ASIGNAR GRUPOS/PROPIETARIOS ---"

sudo chown p1c1_2025_u1:p1c1_2025_gTodos /Punto_D/Libros/
sudo chown p1c1_2025_u2:p1c1_2025_gTodos /Punto_D/Musica/
sudo chown p1c1_2025_u3:p1c1_2025_gTodos /Punto_D/Videos/

echo "--- ASIGNAR PERMISOS ---"

sudo chmod 710 /Punto_D/Libros/
sudo chmod 745 /Punto_D/Musica/
sudo chmod 775 /Punto_D/Videos/

echo "--- PERMISOS ESTABLECIDOS ---"


#!/bin/bash
#
#Punto E
#
#Test
#

echo "--- VERIFICAR PROPIETARIOS Y GRUPOS ---"

sudo ls -ld /Punto_D/*

echo "--- VERIFICACIÓN ---"

sudo stat -c "%A %U %G %n" /Punto_D/*

#!/bin/bash

# Comprobamos si pasaste la cadena como parámetro ($1)
if [ -z "$1" ]; then
    # Si no hay parámetro, la pedimos con read
    echo -n "🔑 Pega la cadena codificada: "
    read cadena
else
    # Si hay parámetro, la usamos directamente
    cadena=$1
fi

# Limpiamos espacios o saltos de línea raros
cadena=$(echo -n "$cadena" | tr -d '[:space:]')

echo -e "\n--- 🚀 Iniciando Decodificación Múltiple ---\n"

for i in {1..20}; do
    # Intentamos decodificar
    nueva_cadena=$(echo -n "$cadena" | base64 -d 2>/dev/null)
    
    # Si el resultado es igual al anterior o está vacío, nos detenemos
    if [ -z "$nueva_cadena" ] || [ "$nueva_cadena" == "$cadena" ]; then
        echo -e "\n⚠️ Se detuvo en el nivel $((i-1)): Ya no hay más Base64."
        break
    fi

    cadena=$nueva_cadena
    echo "Nivel $i: $cadena"

    # Si detectamos el formato de la flag del CTF, nos detenemos
    if [[ "$cadena" == *"{"* ]]; then
        echo -e "\n--------------------------------------"
        echo "✅ ¡BANDERA ENCONTRADA EN NIVEL $i!"
        echo "--------------------------------------"
        break
    fi
done

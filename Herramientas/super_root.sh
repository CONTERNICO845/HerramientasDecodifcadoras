#!/bin/bash

# Si no pasas texto como parámetro, te lo pide
if [ -z "$1" ]; then
    echo -n "🔑 Pega el texto cifrado (César/ROT): "
    read texto
else
    texto="$1"
fi

echo -e "\n--- 🔄 Probando las 25 rotaciones (ROT) ---\n"

# Alfabetos para la traslación
abc="abcdefghijklmnopqrstuvwxyz"
ABC="ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for i in {1..25}; do
    # Creamos el alfabeto rotado para el comando 'tr'
    rot_abc="${abc:$i}${abc:0:$i}"
    rot_ABC="${ABC:$i}${ABC:0:$i}"
    
    # Ejecutamos la rotación
    resultado=$(echo "$texto" | tr "$abc$ABC" "$rot_abc$rot_ABC")
    
    # Si parece una bandera (contiene '{'), le ponemos color
    if [[ "$resultado" == *"{"* ]]; then
        echo -e "\033[0;32m[ROT $i]: $resultado  <-- ✅ POSIBLE BANDERA\033[0m"
    else
        echo "[ROT $i]: $resultado"
    fi
done

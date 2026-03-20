#!/bin/bash

# Si no hay parámetro, pedimos la cadena
if [ -z "$1" ]; then
    echo -n "🔢 Pega el código binario: "
    read binario
else
    binario="$1"
fi

# 1. Limpiamos la cadena de espacios para que no falle
binario=$(echo "$binario" | tr -d ' ')

echo -e "\n--- 🤖 Decodificando Binario ---\n"

# 2. El truco de Perl: convierte bloques de 8 bits a texto ASCII
# Es más rápido y confiable que hacerlo con puros bucles de Bash
echo "$binario" | perl -lpe '$_=pack"B*",$_'

echo -e "\n--------------------------------"

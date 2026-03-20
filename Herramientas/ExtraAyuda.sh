#!/bin/bash

# --- GUÍA DE COMANDOS RÁPIDOS CTF CUTONALÁ 2026 ---

# 1. AYUDA EN ESPAÑOL
# Uso: ayuda nmap
ayuda() {
    "$1" --help | trans -b :es
}

# 2. BUSCAR BANDERAS (FLAGS) EN IMÁGENES/ARCHIVOS
# Uso: buscar imagen.jpg
buscar() {
    strings "$1" | grep -i "flag"
}

# 3. FUERZA BRUTA A ARCHIVOS .ZIP (ROCKYOU)
# Uso: romper_zip archivo.zip
romper_zip() {
    fcrackzip -u -d -p /usr/share/wordlists/rockyou.txt "$1"
}

# 4. FUERZA BRUTA A ESTEGANOGRAFÍA (STEGHIDE)
# Uso: romper_stego imagen.jpg
romper_stego() {
    stegseek --seed "$1" /usr/share/wordlists/rockyou.txt
}

# 5. EXTRACCIÓN AUTOMÁTICA (BINWALK)
# Uso: binwalk -e archivo.jpg
# Nota: Crea una carpeta llamada _archivo.jpg.extracted

echo "✅ Comandos cargados correctamente para Geovani."
echo "Comandos disponibles: ayuda, buscar, romper_zip, romper_stego stegsolve"

#!/bin/bash
echo -n "🔢 Pega el código HEXADECIMAL: "
read hex
echo -e "\n--- 🛰️ Resultado ---"
echo "$hex" | tr -d ' ' | xxd -r -p
echo -e "\n--------------------"

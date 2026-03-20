#!/bin/bash
echo -n "🤖 Pega el código BINARIO: "
read binario

echo -e "\n--- 🛰️ Resultado ---"
echo "$binario" | tr -d ' ' | perl -lpe '$_=pack"B*",$_'
echo -e "\n--------------------"

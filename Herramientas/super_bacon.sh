#!/bin/bash
declare -A bacon=(
    ["aaaaa"]="A" ["aaaab"]="B" ["aaaba"]="C" ["aaabb"]="D" ["aabaa"]="E" ["aabab"]="F"
    ["aabba"]="G" ["aabbb"]="H" ["abaaa"]="I" ["abaab"]="J" ["ababa"]="K" ["ababb"]="L"
    ["abbaa"]="M" ["abbab"]="N" ["abbba"]="O" ["abbbb"]="P" ["baaaa"]="Q" ["baaab"]="R"
    ["baaba"]="S" ["baabb"]="T" ["babaa"]="U" ["babab"]="V" ["babba"]="W" ["babbb"]="X"
    ["bbaaa"]="Y" ["bbaab"]="Z"
)

echo -n "🥓 Pega el código BACON: "
read raw_input

# Limpiar entrada
input=$(echo "$raw_input" | tr '[:upper:]' '[:lower:]' | tr -d '[:space:]')

echo -e "\n--- 🛰️ Resultado ---"
for (( i=0; i<${#input}; i+=5 )); do
    chunk="${input:i:5}"
    printf "%s" "${bacon[$chunk]:-?}"
done
echo -e "\n--------------------"

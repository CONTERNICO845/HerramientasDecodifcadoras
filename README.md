# Herramientas Decodificadoras - Sprint Zero CUTonalá

Colección de scripts en Bash para automatizar retos de Criptografía y Esteganografía.

---

## 📁 Estructura de la raíz

- **`CommandRockYou.txt`** - comando de ejemplo para crackear contraseñas de ZIP usando la wordlist RockYou.
- **`Herramientas/`** - directorio con scripts de decodificación.

---

## 🛠️ Herramientas disponibles

Cada script acepta el texto codificado como parámetro opcional. Si no se pasa, te pedirá que lo escribas.

### 1. `super_bacon.sh`
- **Para qué sirve:** Decodifica Bacon Cipher.
- **Cómo usarlo:**
  - Con parámetro: `./super_bacon.sh "tu_codigo_bacon"`
  - Sin parámetro: Ejecutará y pedirá el código.
- **Formato:** Grupos de 5 'a' y 'b' (ej: `aaaaabbaaa`).

### 2. `super_bin.sh`
- **Para qué sirve:** Decodifica código binario a texto ASCII.
- **Cómo usarlo:**
  - Con parámetro: `./super_bin.sh "0110100001101111"`
  - Sin parámetro: Pedirá "Pega el código BINARIO:".

### 3. `super_binario.sh`
- **Para qué sirve:** Decodifica binario a texto (versión con Perl).
- **Cómo usarlo:**
  - Con parámetro: `./super_binario.sh "0110100001101111"`
  - Sin parámetro: Pedirá "Pega el código binario:".

### 4. `super_Decoder.sh`
- **Para qué sirve:** Decodifica múltiples niveles de Base64 hasta encontrar la bandera.
- **Cómo usarlo:**
  - Con parámetro: `./super_Decoder.sh "tu_cadena_base64"`
  - Sin parámetro: Pedirá "🔑 Pega la cadena codificada:".
- **Nota:** Se detiene automaticamente al encontrar `{flag}`.

### 5. `super_morse.sh`
- **Para qué sirve:** Decodifica código Morse a texto.
- **Cómo usarlo:**
  - Sin parámetro: Ejecutará y pedirá "📠 Pega el código MORSE (usa espacios):".
  - Ejemplo: `./super_morse.sh ".... . .-.. .-.. ---"` (también funciona pasando como parámetro).

### 6. `super_root.sh`
- **Para qué sirve:** Descifra cifrado ROT/César (prueba las 25 rotaciones).
- **Cómo usarlo:**
  - Con parámetro: `./super_root.sh "tu_texto_cifrado"`
  - Sin parámetro: Pedirá "🔑 Pega el texto cifrado (César/ROT):".
- **Resultado:** Muestra las 25 rotaciones, resaltando aquella que contiene `{`.

### 7. `super_unhex.sh`
- **Para qué sirve:** Decodifica texto hexadecimal a ASCII.
- **Cómo usarlo:**
  - Sin parámetro: Ejecutará y pedirá "🔢 Pega el código HEXADECIMAL:".
  - Ejemplo: `./super_unhex.sh "68656c6c6f"`.

### 8. `ExtraAyuda.sh`
- **Para qué sirve:** Guía rápida de comandos CTF (ayuda, buscar flags, fuerza bruta, etc.).
- **Cómo usarlo:** Se fuente con `source ExtraAyuda.sh` o `. ExtraAyuda.sh` para cargar los comandos auxiliares.

---

## 🎲 Mensaje de suerte

¡Que la fuerza te acompañe y que siempre encuentres la bandera antes de que se agote el tiempo! 🍀✨
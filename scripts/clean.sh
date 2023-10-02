#!/bin/bash

# Script per eliminare solo i duplicati nella directory di output

# Directory di output (build, target, etc.)
OUTPUT_DIR="build"

# Verifica se la directory di output esiste
if [ -d "$OUTPUT_DIR" ]; then
    echo "Eliminazione dei duplicati nella directory di output..."

    # Cerca tutti i file con il suffisso -2 e li elimina
    find "$OUTPUT_DIR" -type f -name '*-2.*' -exec rm -f {} \;

    echo "Duplicati eliminati nella directory di output."
else
    echo "Directory di output non trovata. Nessun duplicato da eliminare."
fi

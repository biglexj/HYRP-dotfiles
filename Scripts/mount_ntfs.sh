#!/bin/bash

DISK="/dev/sdc1"
MOUNT_POINT="/mnt/external"

# Montar el disco
sudo mount -t ntfs-3g $DISK $MOUNT_POINT

# Comprobar si el montaje fue exitoso
if [ $? -eq 0 ]; then
    echo "Disco montado correctamente en $MOUNT_POINT"
else
    echo "Error al montar el disco."
fi


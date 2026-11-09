#!/system/bin/sh

FILE="UEFICredPatch.bootTable"
DEST="/system/Boot/Tables"

clear

echo "[+] Initializing UEFI Credential Patch..."
sleep 1

echo "[+] Creating $FILE..."
printf "1" > "$DEST/$FILE"

if [ ! -f "$DEST/$FILE" ]; then
    echo "[-] File creation failed!"
    exit 1
fi

echo "[+] File created successfully!"
sleep 1

echo
echo "========================================"
echo " ABL EXPLOIT SUCESSFUL!"
echo "========================================"
echo
echo "Now put ur device serial as the unlock token"
echo "and it should work."
echo
echo "fastboot oem unlocktoken unlock --force"
echo
echo "========================================"
echo "[+] Done."

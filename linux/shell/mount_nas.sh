#!/bin/bash

WALLET_NAME="kdewallet"
DIR_NAME="NAS"
USERNAME_ENTRY="username"
PASSWORD_ENTRY="password"
TRUENAS_IP="192.168.1.2"
POOL_NAME="main_pool"

USERNAME=$(qdbus org.kde.kwalletd5 /modules/kwalletd5 readPassword "$(qdbus org.kde.kwalletd5 /modules/kwalletd5 org.kde.KWallet.open kdewallet 0 "$WALLET_NAME")" "$DIR_NAME" "$USERNAME_ENTRY" "$WALLET_NAME")
PASSWORD=$(qdbus org.kde.kwalletd5 /modules/kwalletd5 readPassword "$(qdbus org.kde.kwalletd5 /modules/kwalletd5 org.kde.KWallet.open kdewallet 0 "$WALLET_NAME")" "$DIR_NAME" "$PASSWORD_ENTRY" "$WALLET_NAME")
# Mounting the shares (replace 'truenas_ip', '/mnt/shared_set', and '/mnt/vs_set' with your actual values)
# ssh "$USERNAME@$TRUENAS_IP" "zfs load-key $POOL_NAME/vs_set; zfs mount $POOL_NAME/vs_set"
mkdir -p /mnt/shared_set /mnt/vs_set
sudo mount -t cifs //$TRUENAS_IP/shared_set /mnt/shared_set -o username=$USERNAME,password=$PASSWORD,uid=vitalatron,gid=vitalatron
sudo mount -t cifs //$TRUENAS_IP/vs_set /mnt/vs_set -o username=$USERNAME,password=$PASSWORD,uid=vitalatron,gid=vitalatron
#echo USERNAME=$USERNAME
#echo PASSWORD=$PASSWORD

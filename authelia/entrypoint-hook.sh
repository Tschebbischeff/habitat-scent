#!/bin/sh

if [ ! -d "/secrets" ]; then
    mkdir -p /secrets
fi
if [ ! -f "/secrets/jwt" ]; then
    head -c 64 /dev/urandom | base64 > /secrets/jwt
fi
if [ ! -f "/secrets/session" ]; then
    head -c 64 /dev/urandom | base64 > /secrets/session
fi
if [ ! -f "/secrets/storage_key" ]; then
    head -c 64 /dev/urandom | base64 > /secrets/storage_key
fi

CRONTAB_USER="root"
# shellcheck disable=SC2155 # Exit code is ok to be masked in this case
export LLDAP_LDAP_BASE_DN="$(echo "$APP_HOST" | sed 's/\./,DC=/g' | sed 's/^/DC=/')"

tmpCronFile="$(mktemp)"
crontab -u "$CRONTAB_USER" -l 2>/dev/null | grep -v '/backup\.sh$' >"$tmpCronFile"
echo "${AUTHELIA_BACKUP_SCHEDULE} /backup.sh" >>"$tmpCronFile"
crontab -u "$CRONTAB_USER" "$tmpCronFile" || exit 1
rm "$tmpCronFile"

crond -b -l 2

exec "$@"
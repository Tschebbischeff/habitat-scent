#!/bin/sh

CRONTAB_USER="root"
# shellcheck disable=SC2155 # Exit code is ok to be masked in this case
export LLDAP_LDAP_BASE_DN="$(echo "$APP_HOST" | sed 's/\./,dc=/g' | sed 's/^/dc=/')"

tmpCronFile="$(mktemp)"
crontab -u "$CRONTAB_USER" -l 2>/dev/null | grep -v '/backup\.sh$' >"$tmpCronFile"
echo "${LLDAP_BACKUP_SCHEDULE} /backup.sh" >>"$tmpCronFile"
crontab -u "$CRONTAB_USER" "$tmpCronFile" || exit 1
rm "$tmpCronFile"

crond -b -l 2

/bootstrap-hook.sh &

exec "$@"
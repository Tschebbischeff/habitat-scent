#!/bin/sh

[ -z "$UID" ] && UID="0"
# shellcheck disable=SC2155 # Exit code is ok to be masked in this case
export LLDAP_LDAP_BASE_DN="$(echo "$APP_HOST" | sed 's/\./,dc=/g' | sed 's/^/dc=/')"

tmpCronFile="$(mktemp)"
crontab -u "$(id -nu "${UID}")" -l 2>/dev/null | grep -v '/backup\.sh$' >"$tmpCronFile"
echo "${LLDAP_BACKUP_SCHEDULE} /backup.sh" >>"$tmpCronFile"
crontab -u "$(id -nu "${UID}")" "$tmpCronFile" || exit 1
rm "$tmpCronFile"

crond -b -l 2

/bootstrap-hook.sh &

exec "$@"
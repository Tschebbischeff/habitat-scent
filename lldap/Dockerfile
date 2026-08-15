FROM lldap/lldap:stable

RUN apk add --no-cache envsubst
RUN apk add --no-cache dcron grep sqlite

COPY ./backup.sh /backup.sh
RUN chmod +x /backup.sh

COPY ./entrypoint-hook.sh /entrypoint-hook.sh
RUN chmod +x /entrypoint-hook.sh

COPY ./bootstrap-hook.sh /bootstrap-hook.sh
RUN chmod +x /bootstrap-hook.sh

ENTRYPOINT ["/entrypoint-hook.sh"]
CMD ["/docker-entrypoint.sh", "run", "--config-file", "/data/lldap_config.toml"]
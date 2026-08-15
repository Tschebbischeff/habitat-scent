FROM authelia/authelia:latest AS source
FROM alpine:latest

COPY --from=source /app /app

RUN apk add --no-cache dcron grep sqlite

COPY ./backup.sh /backup.sh
RUN chmod +x /backup.sh

COPY ./entrypoint-hook.sh /entrypoint-hook.sh
RUN chmod +x /entrypoint-hook.sh

# PATH="/app:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
ENV PATH="/app:$PATH"

ENTRYPOINT ["/entrypoint-hook.sh"]
CMD ["authelia", "--config", "/config/configuration.yml"]
FROM alpine:latest AS builder

RUN apk add --no-cache busybox-static sqlite-static

FROM authelia/authelia:latest

COPY --from=builder /bin/busybox.static /bin/busybox
COPY --from=builder /usr/bin/sqlite3 /usr/bin/sqlite3

# RUN ln -s /bin/busybox /bin/crontab && \
#     ln -s /bin/busybox /bin/crond
RUN ln -s /bin/env /usr/bin/env

COPY ./backup.sh /backup.sh
RUN chmod +x /backup.sh

COPY ./entrypoint-hook.sh /entrypoint-hook.sh
RUN chmod +x /entrypoint-hook.sh

ENTRYPOINT ["/entrypoint-hook.sh"]
CMD ["authelia", "--config", "/config/configuration.yml"]
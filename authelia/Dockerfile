FROM alpine:latest AS builder

RUN apk add --no-cache curl build-base
RUN SQLITE_URL="https://www.sqlite.org/$(wget -qO- https://www.sqlite.org/download.html | grep -oE '[0-9]{4}/sqlite-autoconf-[0-9]+\.tar\.gz' | head -n 1)" && \
    curl -L -o /tmp/sqlite.tar.gz "$SQLITE_URL" && \
    mkdir -p /tmp/sqlite && \
    tar -xzf /tmp/sqlite.tar.gz -C /tmp/sqlite --strip-components=1 && \
    cd /tmp/sqlite && \
    ./configure --enable-static --disable-shared CFLAGS="-DSQLITE_ENABLE_FTS5 -DSQLITE_ENABLE_RTREE" && \
    make -j$(nproc) LDFLAGS="-static" sqlite3 && \
    mv sqlite3 /usr/bin/sqlite3 && \
    chmod +x /usr/bin/sqlite3

FROM authelia/authelia:latest

COPY --from=builder /usr/bin/sqlite3 /usr/bin/sqlite3

RUN ln -s /bin/env /usr/bin/env

COPY ./backup.sh /backup.sh
RUN chmod +x /backup.sh

COPY ./entrypoint-hook.sh /entrypoint-hook.sh
RUN chmod +x /entrypoint-hook.sh

ENTRYPOINT ["/entrypoint-hook.sh"]
CMD ["authelia", "--config", "/config/configuration.yml"]
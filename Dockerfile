FROM caddy:2.7.5-builder AS builder

RUN xcaddy build --with github.com/ggicci/caddy-jwt@v0.9.2


FROM caddy:2.7.5

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

FROM alpine:latest
MAINTAINER Bradyn Poulsen <bradyn@bradynpoulsen.com>

COPY --from=docker:latest           /usr/local/bin/docker           /usr/local/bin/docker
COPY --from=docker/compose:latest   /usr/local/bin/docker-compose   /usr/local/bin/docker-compose
ENTRYPOINT ["/usr/local/bin/docker-compose"]
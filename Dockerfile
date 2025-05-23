FROM calvadev/shopstr:latest

USER root

RUN apk update && \
    apk add --no-cache curl && \
    rm -rf /var/cache/apk/*

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker_entrypoint.sh"]

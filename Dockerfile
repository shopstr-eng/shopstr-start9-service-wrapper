FROM calvadev/shopstr:latest

RUN apt update && \
    apt install -y curl && \
    rm -rf /var/lib/apt/lists/*

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh

FROM ubuntu:latest
LABEL maintainer="William Miceli <git@williammiceli.me>"
USER root

ARG MC_SERVER_VERSION

RUN apt-get update && apt-get install -y curl \
    && curl -o /MinecraftServer.zip https://minecraft.azureedge.net/bin-linux/bedrock-server-${MC_SERVER_VERSION}.zip \
    && apt-get purge -y curl && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

COPY /entrypoint.sh /

EXPOSE 25565
CMD ["/bin/sh", "/entrypoint.sh"]
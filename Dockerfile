FROM ubuntu:latest
LABEL maintainer="William Miceli <git@williammiceli.me>"
USER root

ARG MC_SERVER_VERSION

RUN apt update && apt install -y curl \
    && curl -o /MinecraftServer.zip https://minecraft.azureedge.net/bin-linux/bedrock-server-${MC_SERVER_VERSION}.zip \
    && apt purge -y curl && apt autoremove && rm /var/lib/apt/lists/*

COPY /entrypoint.sh /

EXPOSE 80
CMD ["/bin/sh", "/entrypoint.sh"]
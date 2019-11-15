FROM ubuntu:bionic
LABEL maintainer="William Miceli <git@williammiceli.me>"
USER root
WORKDIR /

ARG MC_SERVER_VERSION

RUN apt-get update && apt-get install -y curl unzip libcurl4 screen \
    && curl -o /MinecraftServer.zip https://minecraft.azureedge.net/bin-linux/bedrock-server-${MC_SERVER_VERSION}.zip \
    && apt-get purge -y curl && apt-get autoremove -y && rm -rf /var/lib/apt/lists/* \
    && sed -i 's/#startup_message off/startup_message off/g' /etc/screenrc

COPY /usr/bin/ /usr/bin/
COPY /entrypoint.sh /

RUN chmod +x /usr/bin/StartServer

EXPOSE 19132 19132/udp
CMD ["/bin/bash", "/entrypoint.sh"]
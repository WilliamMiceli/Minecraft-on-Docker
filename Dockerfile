FROM ubuntu:latest
LABEL maintainer="William Miceli <git@williammiceli.me>"
USER root

ARG MC_SERVER_VERSION

# Download and setup Minecraft Server archive
#Located at https://minecraft.azureedge.net/bin-linux/bedrock-server-${MC_SERVER_VERSION}.zip


COPY /entrypoint.sh /

EXPOSE 80
CMD ["/bin/sh", "/entrypoint.sh"]
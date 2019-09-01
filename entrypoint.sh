#!/bin/sh

unzip /MinecraftServer.zip -d /MinecraftServer
screen
cd /MinecraftServer
LD_LIBRARY_PATH=. ./bedrock_server
#!/bin/sh

unzip /MinecraftServer.zip -d /MinecraftServer
cd /MinecraftServer
LD_LIBRARY_PATH=. ./bedrock_server
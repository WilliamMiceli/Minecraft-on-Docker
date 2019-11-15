#!/bin/sh

unzip /MinecraftServer.zip -d /MinecraftServer

StartServer

pid=$!

wait

echo "Server process stopped"
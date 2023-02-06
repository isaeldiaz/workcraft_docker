#!/bin/bash
WORKCRAFT_VERSION=v3.3.9

wget https://workcraft.org/_media/download/workcraft-$WORKCRAFT_VERSION-linux.tar.gz

docker build -t workcraft:$WORKCRAFT_VERSION --build-arg WORKCRAFT_VERSION=$WORKCRAFT_VERSION --build-arg USER=$USER --build-arg UID=$UID


#!/bin/bash

# Nom de l'image
NOM_IMAGE="im-tp4"

# Construire l'image Docker
docker build -t $NOM_IMAGE -f Dockerfile1 .

#!/bin/bash

# Nom du conteneur
NOM_CONTAINER="tp4-app"

# Nom de l'image
NOM_IMAGE="im-tp4"

# Nom du réseau
NETWORK_NAME="net-tp4"

# Lancer le conteneur
docker run -d \
  --name $NOM_CONTAINER \
  --network $NETWORK_NAME \
  -p 5000:5000 \
  --mount type=bind,src=$(pwd),target=/srv \
  $NOM_IMAGE



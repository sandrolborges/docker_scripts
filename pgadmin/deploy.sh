#!/bin/bash
echo "############## Criando arquivo .env ###########"
cat ../configs/.env_pgadmin > .env
echo "############# Executando Build ################"
docker-compose up -d
echo "############ Operação executada com sucesso ##########"

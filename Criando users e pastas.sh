#!/bin/bash

echo "Criando diretórios dos users..."
echo "Espere 1 min!"

mkdir /TERRA
mkdir /AR
mkdir /FOGO
mkdir /AGUA

echo "Criando grupos de usuários..."

groupadd GRP_TERRA
groupadd GRP_AR
groupadd GRP_FOGO
groupadd GRP_AGUA

echo "Criando Rangers..."

useradd ranger_vermelho -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TERRA
useradd ranger_azul -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_AR
useradd ranger_amarelo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FOGO

useradd ranger_rosa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TERRA
useradd ranger_preto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_AR
useradd ranger_cinza -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FOGO

useradd ranger_magenta -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_TERRA
useradd ranger_roxo -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_AR
useradd ranger_diamond -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_FOGO

echo "Especificando permissões dos diretórios...."

chown root:GRP_TERRA /adm
chown root:GRP_AR /ven
chown root:GRP_FOGO /sec
chown root:GRP_AGUA /sec

chmod 770 /TERRA
chmod 770 /AR
chmod 770 /FOGO
chmod 777 /AGUA

echo "O procedimento foi finalizado! :)"


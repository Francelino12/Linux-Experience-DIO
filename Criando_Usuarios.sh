#!/bin/bash


echo "Criando e Configurando Usuarios Power Rangers do Sistema..."

useradd ranger_vermelho -c "Ranger Vermelho" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd ranger_vermelho -e

useradd ranger_azul -c "Ranger Azul" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest11 -e

useradd ranger_verde -c "Ranger Verde" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd ranger_verde -e

useradd ranger_amarelo -c "Ranger Amarelo" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd ranger_amarelo -e


echo -e "Finalizado com Sucesso!!! :) -> \e[00;32mVERDE\e[00m"


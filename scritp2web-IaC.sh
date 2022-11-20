#!/bin/bash

echo "Atualizando o Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando Servidor Apache..."

apt-get install apache2 -y

echo "Instalalando Descompactador de Arquivos..."

apt-get install unzip -y

echo "Baixando aplicacao..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos da aplicacao para Servidor Apache..."

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Inciando Servico Web..."

systemctl restart apache2


echo "Concluido..."





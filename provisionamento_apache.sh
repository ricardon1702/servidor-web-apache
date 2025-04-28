#!/bin/bash

# Atualizar pacotes
echo "Atualizando pacotes..."
apt-get update && apt-get upgrade -y

# Instalar Apache
echo "Instalando Apache..."
apt-get install apache2 -y

# Copiar arquivos do site
echo "Copiando arquivos do site..."
cp -R /caminho/para/seus/arquivos/* /var/www/html/

# Reiniciar o Apache
echo "Reiniciando o Apache..."
systemctl restart apache2

echo "Provisionamento concluído!"

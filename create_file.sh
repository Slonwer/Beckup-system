#!/bin/bash

#definindo direct creter
diretorio_origem="/home/slack/Desktop/"
diretorio_criacao="/home/slack/Desktop/"

#verificar se for criado 
if [ ! -d "$diretorio_origem"]; then 
  mkdir -p  $diretorio_destino 
  fi 

  #criando um nome do arquivo 
data_criacao=$(date +"%Y-%m-%d")
arquivo_backup="backup_$data_criacao.tar.gz"

# Verifique se o backup foi bem-sucedido
if [ $? -eq 0 ]; then
    echo "cria concluído com sucesso em $diretorio_destino/$arquivo_backup"
else
    echo "Erro ao fazer o backup."
fi




#!/bin/bash

# Definindo as variáveis
diretorio_origem="/home/slack/Desktop/"
diretorio_destino="/home/slack/Desktop/backup/"

# Verificar se o diretório de origem existe
if [ ! -d "$diretorio_origem" ]; then
  echo "Diretório de origem não existe. Criando..."
  mkdir -p "$diretorio_origem"
fi

# Verificar se o diretório de destino existe
if [ ! -d "$diretorio_destino" ]; then
  echo "Diretório de destino não existe. Criando..."
  mkdir -p "$diretorio_destino"
fi

# Criar um nome de arquivo
data_criacao=$(date +"%Y-%m-%d")
arquivo_backup="backup_$data_criacao.tar.gz"

# Fazer o backup
tar -czvf "$diretorio_destino/$arquivo_backup" -C "$diretorio_origem" .

# Verificar se o backup foi bem-sucedido
if [ $? -eq 0 ]; then
  echo "Backup criado com sucesso em $diretorio_destino/$arquivo_backup"
else
  echo "Erro ao fazer o backup."
fi

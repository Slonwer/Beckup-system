#!/bin/bash

# Defina o diretório de origem e destino
diretorio_origem="/etc/beckup/"
diretorio_destino="/etc/beckup/"

# Verifique se o diretório de destino existe, caso contrário, crie-o
if [ ! -d "$diretorio_destino" ]; then
    mkdir -p $diretorio_destino
fi

# Crie um nome de arquivo para o backup com a data atual
data_backup=$(date +"%Y-%m-%d")
arquivo_backup="backup_$data_backup.tar.gz"

# Execute o backup
tar -czvf "$diretorio_destino/$arquivo_backup" "$diretorio_origem"

# Verifique se o backup foi bem-sucedido
if [ $? -eq 0 ]; then
    echo "Backup concluído com sucesso em $diretorio_destino/$arquivo_backup"
else
    echo "Erro ao fazer o backup."
fi


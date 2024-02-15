Backup Script 

Este é um script em Bash para criar backups de um diretório de origem para um diretório de destino. Ele compacta o diretório de origem em um arquivo .tar.gz com a data atual e o move para o diretório de destino especificado.
Como usar

    Configuração: No início do script, você pode definir o diretório de origem e destino conforme necessário:

    bash

diretorio_origem="/caminho/do/diretorio/de/origem/"
diretorio_destino="/caminho/do/diretorio/de/destino/"

Certifique-se de definir esses diretórios de acordo com sua estrutura de pastas.

Execução: Para executar o script, simplesmente execute-o em um terminal:

bash

    ./backup_script.sh

    Certifique-se de ter permissões de execução no script (chmod +x backup_script.sh) e de estar no diretório onde o script está localizado.

    Verificação: Após a execução, o script mostrará uma mensagem indicando se o backup foi bem-sucedido ou se ocorreu algum erro.

Funcionamento

    Verificação do Diretório de Destino: O script verifica se o diretório de destino especificado existe. Se não existir, o script o criará.

    Nome do Arquivo de Backup: O script gera um nome de arquivo de backup com a data atual no formato backup_YYYY-MM-DD.tar.gz.

    Execução do Backup: Utilizando o comando tar, o script cria um arquivo .tar.gz contendo o conteúdo do diretório de origem e o move para o diretório de destino.

    Verificação do Sucesso do Backup: O script verifica o código de saída do comando tar. Se for zero, indica que o backup foi bem-sucedido e exibe uma mensagem de sucesso. Caso contrário, exibe uma mensagem de erro.

Notas

    Certifique-se de ter permissões adequadas para acessar e executar os diretórios e arquivos relevantes.
    Este script não realiza a rotina de agendamento de backups. Você pode configurar tarefas de agendamento no sistema operacional para executar este script periodicamente, se necessário.

Autor

Criado por [Slonwer] - 

Se você tiver alguma dúvida, sugestão ou encontrar algum problema, não hesite em entrar em contato.

Última atualização: [13/02/2024]

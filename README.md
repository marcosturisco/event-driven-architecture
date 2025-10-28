# Projeto de Exemplo - EDA

Aplicação que demonstra o uso de uma arquitetura baseada em eventos.

## Tecnologias utilizadas
- GO, Spring boot
- Mysql

## Como executar
1. Ao clonar o projeto do github na máquina local
2. Execute o comando `$docker-compose up -d --build`
3. Após todos os containers subirem e estarem inicializados
4. Abrir o arquivo `client.http` do projeto, que fica na pasta `api`
5. Clicar no link de ação Send Request da linha 32 que executa a chamada GET no endpoint `balances/a1`, onde a1 é a chave da account carregada na inicialização do projeto

## Objetivo do Desafio
1. Criar um endpoint em qualquer linguagem capaz de consumir mensagens emitidas via evento pelo Kafka e atualizar os saldos das contas criadas na carga inicial do projeto
2. O endpoint deve ser consumido através da uri `balances/{account_id}`
3. Deve ser acessado na porta 3003
4. Seguindo o seguinte formato `GET http://localhost:3003/balances/a1 HTTP/1.1`

## Carga Inicial no `wallet` producer database
1. Clientes: (id:c1 - name:Grace Maia) / (id:c2 - name:Elaina Mendonca)
2. Contas: (id:a1 - client_id:c1 - balance:1000) / (id:a2 - client_id:c2 - balance:1000)

## Carga Inicial no `wallet-consumer` consumer database
1. Balances: (id:UUID() - account_id_from:c1 - account_id_to:c2 - balance_account_from:1000 - balance_account_to:1000)

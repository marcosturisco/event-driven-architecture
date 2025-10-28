# Projeto de Exemplo - EDA

Aplicação que demonstra o uso de uma arquitetura baseada em eventos.

## Tecnologias utilizadas
- GO, Spring boot
- Mysql

## Como executar
1. Ao clonar o projeto do github na máquina local
2. Execute o comando $docker-compose up -d --build
3. Após todos os containers subirem e estarem inicializados
4. Abrir o arquivo client.http do projeto, que fica na pasta api
5. Clicar no link de ação Send Request da linha 32 que executa a chamada GET no endpoint balances/a1, onde a1 é a chave da account carregada na inicialização do projeto

## Objetivo do Desafio
1. Criar um endpoint em qualquer linguagem capaz de consumir mensagens emitidas via evento pelo Kafka e atualizar os saldos das contas criadas na carga inicial do projeto
2. O endpoint deve ser consumido através da uri `balances/{account_id}`
3. Deve ser acessado na porta 3003
4. Seguindo o seguinte formato `GET http://localhost:3003/balances/a1 HTTP/1.1`

## Carga Inicial
1. Clientes: (c1 - Grace Maia) / (c2 - Elaina Mendonca)
2. Contas: (a1 - 1000) / (a2 - 1000)

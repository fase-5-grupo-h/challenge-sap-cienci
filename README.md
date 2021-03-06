# Introdução Microserviço

Projeto faz parte do CHALLENGE SAP & CIENCI - 5AOJ desenvolvido pelos integrantes do Grupo H.

- Diogenes Costa - diogeneskelsen [arroba] gmail [ponto] com
- Jackson França - jackson.sfranca [arroba] hotmail [ponto] com

# O desafio – processo de pagamento automático

Microserviço criado utilizando Python e configurado para suportar Docker. 

Nesse ambiente também há um banco de dados utilizando NoSQL (MongoDB) e a documentação completa com  exemplos de requisição e dados necessários para chamar a API. 

O microserviço criado nesse projeto faz parte do Challenge SAP & CIENCI do MBA em Engenharia de Software da FIAP criado para suportar um processo de pagamento automático integrado ao SAP para substituir o método existente conhecido como VAN (Value Added Network), ou Rede de Valor agregado, é uma rede privada que permite a troca de informações entre empresas de forma segura, funcionando como uma central de comunicação. Integrada ou não a um ERP, ela substitui o uso do Internet Banking permitindo que pagamentos e cobranças sejam feitos.

# Estrutura de diretório e arquivos principais

| Diretório | Descrição |
| ----------- | ----------- |
| ./aplicativo | Aplicativo mobile desenvolvido utilizando Flutter |
| ./consumer | Microserviço desenvolvido em Python para processar items da fila de pagamento |
| ./docs | Diretório com documentação da API em HTML e dataset com 1k de transações  |
| ./web | API e Microserviço desenvolvido em Python para receber pedidos de pagamento e enviar para a fila além de processar e armazenar os pagamentos |
| .env | Arquivo de configuração de features flags |
| docker-compose.yml | Arquivo de configuração do Docker com API, RabbitMQ, Consumer e MongoDB |


# Documentação online

[https://app.swaggerhub.com/apis/Student-Grupo-H/sap-cienci_open_api_rest_pagamentos/1.0.0](https://app.swaggerhub.com/apis/Student-Grupo-H/sap-cienci_open_api_rest_pagamentos/1.0.0)

# Como executar (passo a passo)

Este projeto possui Docker configurado, para executá-lo você vai precisar do [Docker](https://www.docker.com/) instalado.

Após clonar o projeto em seu ambiente de desenvolvimento execute o comando a seguir para iniciar o ambiente de desenvolvimento local:

``` docker-compose  -f "docker-compose.yml" up -d --build web mongo rabbitmq consumer  ```

Se tudo ocorreu bem você pode navegar para o endereço abaixo no seu navegador, onde será possível acessar a documentação e os exemplos da API:

[http://localhost:5000/](http://localhost:5000/)

# Documentação Open API

A documentação da API pode ser acessada localmente de forma direta quando o ambiente Docker estiver online através do endereço: 

[http://localhost:5000/static/api/index.html](http://localhost:5000/static/api/index.html)

Para atualizar a documentação, edite o arquivo:

```openapi.yml```

Em seguida execute o comando abaixo no terminal (é necessário ter o [NodeJS](https://nodejs.org/en/) instalado):

```bootprint openapi openapi.yml static/api```

# Arquitetura

![Microservice Architecture](https://github.com/fase-5-grupo-h/challenge-sap-cienci/blob/main/web/static/architecture.jpg?raw=true)

# Pitch

https://user-images.githubusercontent.com/241153/139726181-2f88b81f-9be9-4d89-b459-8694a4d6f1f9.mp4

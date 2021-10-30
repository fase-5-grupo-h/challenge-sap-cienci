# Introdução Microserviço

Projeto faz parte do CHALLENGE SAP & CIENCI - 5AOJ desenvolvido pelos integrantes do Grupo H.

- Diogenes Costa - diogeneskelsen [arroba] gmail [ponto] com
- Jackson França - jackson.sfranca [arroba] hotmail [ponto] com

# O desafio – processo de pagamento automático

Microserviço criado utilizando Python e configurado para suportar Docker. 

Nesse ambiente também há um banco de dados utilizando NoSQL (MongoDB) e a documentação completa com  exemplos de requisição e dados necessários para chamar a API. 

O microserviço criado nesse projeto faz parte do Challenge SAP & CIENCI do MBA em Engenharia de Software da FIAP criado para suportar um processo de pagamento automático integrado ao SAP para substituir o método existente conhecido como VAN (Value Added Network), ou Rede de Valor agregado, é uma rede privada que permite a troca de informações entre empresas de forma segura, funcionando como uma central de comunicação. Integrada ou não a um ERP, ela substitui o uso do Internet Banking permitindo que pagamentos e cobranças sejam feitos.

# Documentação online

[https://app.swaggerhub.com/apis/](https://app.swaggerhub.com/apis/)

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

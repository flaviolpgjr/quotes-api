# QUOTES-API

API que faz um crawler da primeira pagina do site http://quotes.toscrape.com/, e realiza um cache com mongoDB.

### Solução

Foi desenvolvida uma API em rails 5, utilizando a gem Kaminari para realizar o parser das informações vindas do site, para salvar as informações
retornadas do site foi utilizado o mondoDB(gem mongoid), para a autenticação utilizei JWT(gem Knock), na parte de busca principal foi utilizado services,
com a finalidade de retirar a logica de busca e parser do controller.

#### Tecnologias
* Rails 5.x
* MongoDB 4.x

#### Pré-requisitos
- Ruby 2.3.x - [Instalação](https://gorails.com/setup/ubuntu/18.04#ruby)
- Rails 5.1.x - [Instalação](https://gorails.com/setup/ubuntu/18.04#rails)
- MongoDB 4.x - [Instalação](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)

#### Rodando o projeto
1. Dentro da pasta quotes-api instale as dependências com o comando: ```bundle install ```
2. Caso o mongoDB não esteja iniciado, inicie ele através do comando: ```sudo service mongod start```
3. Caso queira gerar um usuário padrão para login(email:teste@gmail.com, password:abc123), execute o comando: ```rails db:seed```
4. Por ultimo start o servidor, através do comando: ``` rails server ``` ou ``` rails s ```
Não se esqueça de manter o terminal aberto.




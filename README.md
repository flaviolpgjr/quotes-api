# QUOTES-API

API que faz um crawler da primeira pagina do site http://quotes.toscrape.com/, e realiza um cache com mongoDB.

### Solução

Foi desenvolvida uma API em rails 5, utilizando a gem Kaminari para realizar o parser das informações vindas do site, para salvar as informações
retornadas do site foi utilizado o mondoDB(gem mongoid), para a autenticação foi utilizado JWT(gem Knock), na parte de busca principal foi utilizado services,
com a finalidade de retirar a logica de busca e parser do controller.

### Funcionamento Basico

Toda vez que uma tag é pesquisada, verifica-se no banco se a tag pesquisada foi previamente salva, se não tiver sido, realiza-se o parser das informações do site, e salva os dados retornados no banco, caso a tag pesquisada estiver em banco, realiza-se uma busca interna das frases que contém a tag.

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
não se esqueça de manter o terminal aberto.

### Utilizando a API

Recomenda-se usar o postman para teste da API.

1. Caso não tenha dado o comando ```rails db:seed```, ou caso queira cadastrar um novo usuário, acesse a url via POST ```localhost:3000/user/register```, passando
o objeto: 

```
	{
		"auth":{
			"email":"usuarioexemplo@gmail.com",
			"password":"123456"
		
		}
	}

```

![alt text](https://github.com/flaviolpgjr/quotes-api/blob/master/images/img1.png)

2. Para logar na API, e pegar o JWT, acesse a url via POST ``localhost:3000/user_token```, passando
os dados previamente cadastrados: 

```
	{
		"auth":{
			"email":"usuarioexemplo@gmail.com",
			"password":"123456"
		
		}
	}

```
A API, ira retornar um JWT nesse formato:

```

"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MzQzNzI0OTgsInN1YiI6eyIkb2lkIjoiNWI3MzU5MGFhNTZlMDQwZmIwM2JjODY1In19.YW6eylabPG5tfTxUOK2vjetu4poYB8WGaJHU-ucrmOw"

```

![alt text](https://github.com/flaviolpgjr/quotes-api/blob/master/images/img2.png)

3. Após logado, deve-se setar no header Authorization do postman, precedido da palavra Bearer, o seu jwt, ficando dessa forma:

![alt text](https://github.com/flaviolpgjr/quotes-api/blob/master/images/img3.png)

4. Agora, para fazer a pesquisa utilize a URL ```localhost:3000/quotes/:tag``` através do método GET, onde :tag é a tag que será pesquisada:

![alt text](https://github.com/flaviolpgjr/quotes-api/blob/master/images/img4.png)






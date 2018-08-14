# QUOTES-API

API que faz um crawler da primeira pagina do site http://quotes.toscrape.com/, e realiza um cache com mongoDB.

### Solução

Foi desenvolvida uma API em rails 5, utilizando a gem Kaminari para realizar o parser das informações vindas do site, e para salvar as informações
retornadas do site, foi utilizado o mondoDB, para a autenticação utilizei JWT (gem Knock), internamente foi utilizado services, para abstrair toda 
a lógica de busca, do controller principal.



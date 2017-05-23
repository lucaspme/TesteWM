#language: pt
#encoding: UTF-8

Funcionalidade: Buscar post inexistente
  Eu como usuario do jsonplaceholder
  Quero validar a busca por um ID inexistente na lista de posts da API

  @api_done
  Cenário: Validar se a API retorna a lista com os posts
    Dado que eu realize a chamada no serviço buscando pelo ID inexistente "1200"
    Então o serviço responderá com o código "404"

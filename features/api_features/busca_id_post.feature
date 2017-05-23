#language: pt
#encoding: UTF-8

Funcionalidade: Buscar post específico
  Eu como usuario do jsonplaceholder
  Quero buscar um ID específico da lista de posts da API

  @api_done
  Cenário: Validar se a API retorna um id específico da lista de posts
    Dado que eu realize a chamada no serviço buscando pelo ID "100"
    E o serviço responderá com o código "200"
    Então eu validarei os valores da resposta do ID obtido

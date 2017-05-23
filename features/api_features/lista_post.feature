#language: pt
#encoding: UTF-8

Funcionalidade: Listar todos posts
  Eu como usuario do jsonplaceholder
  Quero validar a lista de posts da API

  @api_done
  Cenário: Validar se a API retorna a lista com os posts
    Dado que eu realize a chamada no serviço de retorno dos posts
    E o serviço responderá com o código "200"
    Então eu validarei os valores da resposta do serviço de consulta de posts

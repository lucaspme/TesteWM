Dado(/^que eu realize a chamada no serviço buscando pelo ID inexistente "([^"]*)"$/) do |id_inexistente|
  @response = Posts.new.get_busca_id_inexistente(id_inexistente)
end

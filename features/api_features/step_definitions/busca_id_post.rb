Dado(/^que eu realize a chamada no serviço buscando pelo ID "([^"]*)"$/) do |id_post|
  @response = Posts.new.get_busca_id_post(id_post)
end

Então(/^eu validarei os valores da resposta do ID obtido$/) do
  expect(@response.parsed_response['userId']).to eq 10
  expect(@response.parsed_response['id']).to eq 100
  expect(@response.parsed_response['title']).to eq "at nam consequatur ea labore ea harum"
  expect(@response.parsed_response['body']).to eq "cupiditate quo est a modi nesciunt soluta\nipsa voluptas error itaque dicta in\nautem qui minus magnam et distinctio eum\naccusamus ratione error aut"
end

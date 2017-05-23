Dado(/^que eu realize a chamada no serviço de retorno dos posts$/) do
  @response = Posts.new.get_consulta_posts
end

Dado(/^o serviço responderá com o código "([^"]*)"$/) do |code|
  expect(@response.code).to eq (code.to_i)
end

Então(/^eu validarei os valores da resposta do serviço de consulta de posts$/) do
  increment = 0
  userid = 1
  while increment <= 99 do
    if (increment != 0) && (increment % 10 == 0)
      userid+=1
    end
    expect(@response.parsed_response[increment]['userId']).to eq userid
    expect(@response.parsed_response[increment]['id']).to eq increment + 1
    expect(@response.parsed_response[0]['title']).to have_content
    expect(@response.parsed_response[0]['body']).to have_content
    increment = increment + 1
  end
end

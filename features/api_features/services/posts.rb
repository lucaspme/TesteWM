class Posts
  include HTTParty
  base_uri ENVIRONMENT['jsonplaceholder']
  format :json
  headers 'Content-Type' => 'application/json'

  def get_consulta_posts
    self.class.get("/posts/")
  end

  def get_busca_id_post(id_post)
    self.class.get("/posts/" + id_post)
  end

  def get_busca_id_inexistente(id_inexistente)
    self.class.get("/posts/" + id_inexistente)
  end
end

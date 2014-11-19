json.array!(@tipos_contatos) do |tipos_contato|
  json.extract! tipos_contato, :id, :descricao
  json.url tipos_contato_url(tipos_contato, format: :json)
end

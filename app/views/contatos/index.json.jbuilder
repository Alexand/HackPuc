json.array!(@contatos) do |contato|
  json.extract! contato, :id, :mensagem, :user_id, :tipo_id
  json.url contato_url(contato, format: :json)
end

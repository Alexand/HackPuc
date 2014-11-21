json.array!(@contatos) do |contato|
  json.extract! contato, :id, :mensagem, :linha, :placa, :user_id, :tipo_id
  json.url contato_url(contato, format: :json)
end

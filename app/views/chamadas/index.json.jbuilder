json.array!(@chamadas) do |chamada|
  json.extract! chamada, :id, :linha, :parada_id, :descricao, :user_id
  json.url chamada_url(chamada, format: :json)
end

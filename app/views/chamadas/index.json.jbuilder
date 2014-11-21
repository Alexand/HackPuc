json.array!(@chamadas) do |chamada|
  json.extract! chamada, :id, :linha, :parada_id, :descricao, :status, :user_id, :created_at, :updated_at
  json.url chamada_url(chamada, format: :json)
end

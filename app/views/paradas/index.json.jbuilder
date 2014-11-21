json.array!(@paradas) do |parada|
  json.extract! parada, :id, :linha, :descricao, :sequencia, :agencia, :latitude, :longitude, :endereco, :bairro, :created_at, :updated_at
  json.url parada_url(parada, format: :json)
end

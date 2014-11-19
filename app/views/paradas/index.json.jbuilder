json.array!(@paradas) do |parada|
  json.extract! parada, :id
  json.url parada_url(parada, format: :json)
end

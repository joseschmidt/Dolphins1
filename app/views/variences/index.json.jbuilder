json.array!(@variences) do |varience|
  json.extract! varience, :id, :varience, :desc
  json.url varience_url(varience, format: :json)
end

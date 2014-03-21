json.array!(@strokes) do |stroke|
  json.extract! stroke, :id, :stroke, :desc
  json.url stroke_url(stroke, format: :json)
end

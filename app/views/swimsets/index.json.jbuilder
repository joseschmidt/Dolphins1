json.array!(@swimsets) do |swimset|
  json.extract! swimset, :id, :practice_id, :qty, :distance, :rori, :rest, :comment
  json.url swimset_url(swimset, format: :json)
end

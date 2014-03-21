json.array!(@subsets) do |subset|
  json.extract! subset, :id, :swimset_id, :distance, :stroke_id, :comment
  json.url subset_url(subset, format: :json)
end

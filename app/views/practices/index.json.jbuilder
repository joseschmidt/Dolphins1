json.array!(@practices) do |practice|
  json.extract! practice, :id, :practicedate, :group_id, :lane, :compstatus, :comment
  json.url practice_url(practice, format: :json)
end

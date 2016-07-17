json.array!(@charts) do |chart|
  json.extract! chart, :id, :fable_id, :user_id, :reference_date, :point
  json.url chart_url(chart, format: :json)
end

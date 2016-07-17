json.array!(@fables) do |fable|
  json.extract! fable, :id, :user_id, :name, :story, :summary, :views, :likes
  json.url fable_url(fable, format: :json)
end

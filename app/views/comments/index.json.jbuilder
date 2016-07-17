json.array!(@comments) do |comment|
  json.extract! comment, :id, :fable_id, :user_id, :description
  json.url comment_url(comment, format: :json)
end

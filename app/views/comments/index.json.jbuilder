json.array!(@comments) do |comment|
  json.extract! comment, :id, :fable_id, :user_id, :description
  json.url fable_comment_url(@fable, comment, format: :json)
end

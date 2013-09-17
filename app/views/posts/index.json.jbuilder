json.array!(@posts) do |post|
  json.extract! post, :discuss_id, :title, :description
  json.url post_url(post, format: :json)
end

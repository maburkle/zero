json.array!(@discusses) do |discuss|
  json.extract! discuss, :topic_id, :title, :description
  json.url discuss_url(discuss, format: :json)
end

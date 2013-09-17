json.array!(@topics) do |topic|
  json.extract! topic, :subject_id, :title, :description
  json.url topic_url(topic, format: :json)
end

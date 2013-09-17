json.array!(@subjects) do |subject|
  json.extract! subject, :forum_id, :title, :description
  json.url subject_url(subject, format: :json)
end

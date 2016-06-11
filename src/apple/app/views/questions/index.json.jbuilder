json.array!(@questions) do |question|
  json.extract! question, :id, :question, :author_id, :author_name
  json.url question_url(question, format: :json)
end

json.array!(@prayers) do |prayer|
  json.extract! prayer, :id, :text, :created_by, :created_for, :title, :created_at
  json.url prayer_url(prayer, format: :json)
end
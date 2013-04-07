json.array!(@prayers) do |prayer|
  json.extract! prayer, :text, :created_by, :created_for, :title
  json.url prayer_url(prayer, format: :json)
end
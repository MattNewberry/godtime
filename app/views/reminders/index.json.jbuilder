json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :weekday, :label, :time, :created_at
  json.url reminder_url(reminder, format: :json)
end
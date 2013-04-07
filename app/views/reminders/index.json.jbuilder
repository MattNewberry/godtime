json.array!(@reminders) do |reminder|
  json.extract! reminder, :weekday, :label, :time
  json.url reminder_url(reminder, format: :json)
end
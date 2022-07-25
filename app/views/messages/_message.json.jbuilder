json.extract! message, :id, :target_date, :title, :created_at, :updated_at
json.url message_url(message, format: :json)

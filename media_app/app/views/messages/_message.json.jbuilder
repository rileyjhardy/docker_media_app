json.extract! message, :id, :title, :description, :tag, :url, :thumbnail_url, :created_at, :updated_at
json.url message_url(message, format: :json)

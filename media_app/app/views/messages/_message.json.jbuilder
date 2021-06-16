json.extract! message, :id, :title, :description, :tag, :video_file, :thumb_file, :created_at, :updated_at
json.url message_url(message, format: :json)

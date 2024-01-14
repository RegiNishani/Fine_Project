json.extract! notification, :id, :subject, :body, :published, :publish_at, :created_at, :updated_at
json.url notification_url(notification, format: :json)

json.extract! comment, :id, :content, :users_id, :gallerys_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)

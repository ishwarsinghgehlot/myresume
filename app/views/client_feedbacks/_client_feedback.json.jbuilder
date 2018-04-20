json.extract! client_feedback, :id, :name, :email, :message, :created_at, :updated_at
json.url client_feedback_url(client_feedback, format: :json)

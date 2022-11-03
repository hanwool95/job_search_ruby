json.extract! user, :id, :email, :introduce, :created_at, :updated_at
json.url user_url(user, format: :json)

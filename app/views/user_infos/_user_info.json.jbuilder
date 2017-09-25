json.extract! user_info, :id, :name, :user_id, :about, :age, :school, :ratings, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)

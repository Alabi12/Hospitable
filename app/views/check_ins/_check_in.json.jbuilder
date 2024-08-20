json.extract! check_in, :id, :guest_id, :check_in_time, :digital_key, :created_at, :updated_at
json.url check_in_url(check_in, format: :json)

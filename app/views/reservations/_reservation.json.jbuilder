json.extract! reservation, :id, :guest_id, :table_id, :reservation_time, :special_requests, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)

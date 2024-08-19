json.extract! booking, :id, :room_id, :guest_id, :check_in_date, :check_out_date, :status, :created_at, :updated_at
json.url booking_url(booking, format: :json)

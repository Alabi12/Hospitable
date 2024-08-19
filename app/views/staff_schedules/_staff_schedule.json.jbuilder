json.extract! staff_schedule, :id, :user_id, :shift_start, :shift_end, :role, :created_at, :updated_at
json.url staff_schedule_url(staff_schedule, format: :json)

json.extract! loyalty_program, :id, :guest_id, :points_balance, :membership_tier, :created_at, :updated_at
json.url loyalty_program_url(loyalty_program, format: :json)

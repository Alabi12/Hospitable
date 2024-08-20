json.extract! offer, :id, :guest_id, :offer_details, :expiry_date, :created_at, :updated_at
json.url offer_url(offer, format: :json)

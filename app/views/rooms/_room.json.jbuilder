json.extract! room, :id, :room_number, :room_type, :status, :price, :created_at, :updated_at
json.url room_url(room, format: :json)

json.extract! order, :id, :reservation_id, :menu_item_id, :quantity, :status, :created_at, :updated_at
json.url order_url(order, format: :json)

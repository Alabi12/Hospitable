json.extract! inventory, :id, :item_name, :quantity, :reorder_level, :supplier_id, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)

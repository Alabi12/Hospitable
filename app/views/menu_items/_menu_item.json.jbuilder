json.extract! menu_item, :id, :item_name, :description, :price, :popularity_score, :created_at, :updated_at
json.url menu_item_url(menu_item, format: :json)

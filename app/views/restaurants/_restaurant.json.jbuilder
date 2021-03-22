json.extract! restaurant, :id, :name, :address, :lat, :lng, :category_id, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)

json.extract! meal, :id, :name, :description, :price, :category_id, :restaurant_id, :created_at, :updated_at
json.url meal_url(meal, format: :json)

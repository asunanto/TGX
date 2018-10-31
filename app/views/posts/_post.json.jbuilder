json.extract! post, :id, :product_name, :price, :user_id, :location, :description, :sold, :flagged, :created_at, :updated_at
json.url post_url(post, format: :json)

json.extract! offer, :id, :title, :description, :price, :subject, :user_id, :created_at, :updated_at
json.url offer_url(offer, format: :json)

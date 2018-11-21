json.extract! food_review, :id, :food_id, :user_id, :title, :body, :rating, :created_at, :updated_at
json.url food_review_url(food_review, format: :json)

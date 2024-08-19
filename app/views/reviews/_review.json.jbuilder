json.extract! review, :id, :guest_id, :review_text, :rating, :sentiment, :created_at, :updated_at
json.url review_url(review, format: :json)

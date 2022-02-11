json.extract! book_user, :id, :user_id, :book_id, :created_at, :updated_at
json.url book_user_url(book_user, format: :json)

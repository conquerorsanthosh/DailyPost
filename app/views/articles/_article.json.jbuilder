json.extract! article, :id, :title, :contents, :comments, :location, :created_at, :updated_at
json.url article_url(article, format: :json)
json.(@post, :id, :title, :description, :all_tags, :created_at, :updated_at)
json.comments @post.comments, :id, :body, :created_at, :updated_at
json.image @post.image, :url

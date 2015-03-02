json.(@post, :id, :title, :description, :image, :created_at, :updated_at)
json.comments @post.comments, :id, :body, :created_at, :updated_at
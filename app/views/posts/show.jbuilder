json.(@post, :id, :title, :description, :all_tags, :created_at, :updated_at)
json.comments do |json, comment|
  json.(comment, :id, :body, :created_at, :updated_at)
  json.user comment.user, :id, :first_name, :last_name
end
json.image @post.image, :url
json.user @post.user, :id, :first_name, :last_name

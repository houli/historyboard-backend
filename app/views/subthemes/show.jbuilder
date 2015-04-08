json.(@subtheme, :id, :theme_id, :title, :created_at, :updated_at)
json.posts @subtheme.posts do |post|
  json.set! :image do
    json.set! :url, post.image.url
  end
  json.id post.id
  json.title post.title
  json.description post.description
  json.user post.user
  json.created_at post.created_at
  json.updated_at post.updated_at
end

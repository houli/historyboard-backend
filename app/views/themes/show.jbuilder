json.(@theme, :id, :title, :description, :created_at, :updated_at)
json.subthemes @theme.subthemes, :id, :title, :created_at, :updated_at

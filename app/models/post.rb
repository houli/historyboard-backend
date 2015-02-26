class Post < ActiveRecord::Base
  # Associations
  has_and_belongs_to_many :subthemes

  # Validations
  validates :title, presence: true, length: { minimum: 3, maximum: 128 }
  validates :description, presence: true, length: { minimum: 3, maximum: 500 }
  validates :subtheme_ids, presence: true

  # Image uploading (also adds @theme.image.url etc.)
  mount_uploader :image, ImageUploader
  validates :image, presence: true
end

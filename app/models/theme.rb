class Theme < ActiveRecord::Base
  # Associations
  has_many :subthemes

  # Validations
  validates :title, presence: true, uniqueness: true, length: { minimum: 3, maximum: 128 }
  validates :description, presence: true, length: { minimum: 3, maximum: 128 }

  # Image uploading (also adds @theme.image.url etc.)
  mount_uploader :image, ImageUploader
  validates :image, presence: true
end

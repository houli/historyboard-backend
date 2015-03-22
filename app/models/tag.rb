class Tag < ActiveRecord::Base
  # Associations
  has_many :taggings
  has_many :posts, through: :taggings

  # Validations
  validates :name, presence: true, length: { minimum: 3, maximum: 128 }
end

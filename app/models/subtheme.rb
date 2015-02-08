class Subtheme < ActiveRecord::Base
  # Associations
  has_and_belongs_to_many :posts
  belongs_to :theme

  # Validations
  validates :title, presence: true, uniqueness: true, length: { minimum: 3, maximum: 128 }
  validates :theme_id, presence: true
end

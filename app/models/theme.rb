class Theme < ActiveRecord::Base
  # Associations
  has_many :subthemes

  # Validations
  validates :title, presence: true, uniqueness: true, length: { minimum: 3, maximum: 128 }
  validates :description, presence: true, length: { minimum: 3, maximum: 128 }
end

class Post < ActiveRecord::Base
  # Associations
  has_and_belongs_to_many :subthemes

  # Validations
  validates :title, presence: true, length: { minimum: 3, maximum: 128 }
  validates :description, presence: true, length: { minimum: 3, maximum: 500 }
  validates :subtheme_ids, presence: true

end

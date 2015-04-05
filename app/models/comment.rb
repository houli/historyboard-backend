class Comment < ActiveRecord::Base
  # Associations
  belongs_to :post
  belongs_to :user

  # Validations
  validates :body, presence: true, length: { minimum: 10, maximum: 5000 }
  validates :post_id, presence: true
end

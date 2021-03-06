class Post < ActiveRecord::Base
  # Associations
  has_and_belongs_to_many :subthemes
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings

  # Validations
  validates :title, presence: true, length: { minimum: 3, maximum: 128 }
  validates :description, presence: true, length: { minimum: 3, maximum: 500 }
  validates :subtheme_ids, presence: true
  validates :all_tags, presence: true

  # Image uploading (also adds @theme.image.url etc.)
  mount_uploader :image, ImageUploader
  validates :image, presence: true

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name)
  end

  def self.tagged_with(name)
    tag = Tag.where(name: name).first
    if tag
      tag.posts
    else
      []
    end
  end
end

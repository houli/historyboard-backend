class CreatePostsSubthemes < ActiveRecord::Migration
  def change
    create_table :posts_subthemes, id: false do |t|
      t.belongs_to :post, index: true
      t.belongs_to :subtheme, index: true
    end
  end
end

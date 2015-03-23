class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :all_tags

      t.timestamps null: false
    end
  end
end

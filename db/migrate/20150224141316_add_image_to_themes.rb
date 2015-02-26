class AddImageToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :image, :string
  end
end

class CreateSubthemes < ActiveRecord::Migration
  def change
    create_table :subthemes do |t|
      t.belongs_to :theme, index: true
      t.string :title

      t.timestamps null: false
    end
  end
end

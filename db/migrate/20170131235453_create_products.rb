class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :image_url

      t.timestamps
    end
  end
end

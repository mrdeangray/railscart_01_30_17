class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :category
      t.string :title

      t.timestamps
    end
  end
end

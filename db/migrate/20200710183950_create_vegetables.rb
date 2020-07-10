class CreateVegetables < ActiveRecord::Migration[6.0]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.datetime :plant_date
      t.string :color
      t.integer :size

      t.timestamps
    end
  end
end

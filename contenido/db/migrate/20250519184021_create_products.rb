class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :make
      t.string :model
      t.float :unit_price
      t.string :active
      t.float :discount
      t.integer :discount_active

      t.timestamps
    end
  end
end

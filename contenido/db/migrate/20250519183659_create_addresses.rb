class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.string :town_province
      t.string :address
      t.string :apartament
      t.string :floor

      t.timestamps
    end
  end
end

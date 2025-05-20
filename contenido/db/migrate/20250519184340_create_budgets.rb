class CreateBudgets < ActiveRecord::Migration[8.0]
  def change
    create_table :budgets do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :expiry_date
      t.float :estimated_price
      t.text :description
      t.integer :state

      t.timestamps
    end
  end
end

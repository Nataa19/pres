class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :role, :integer, default: 0
    add_column :users, :phone, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :cuil_cuit, :string
  end
end

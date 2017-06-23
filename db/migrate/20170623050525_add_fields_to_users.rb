class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :phone, :string
    add_column :users, :admin, :boolean, :default => false
    add_column :users, :gender, :String
    add_column :users, :age, :integer
    add_column :users, :user_id, :integer
  end
end

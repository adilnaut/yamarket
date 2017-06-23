class CreateAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :adresses do |t|
      t.integer :user_id
      t.string :title
      t.string :city
      t.string :street
      t.string :home

      t.timestamps
    end
  end
end

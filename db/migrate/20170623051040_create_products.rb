class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :title
      t.string :description
      t.integer :price
      t.boolean :available, :default => true
      t.attachment :image, :default => "missing.png"
      t.integer :discount, :default => 0
      t.string :size

      t.timestamps
    end
  end
end

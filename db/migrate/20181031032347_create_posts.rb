class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :product_name
      t.decimal :price
      t.integer :user_id
      t.string :location
      t.text :description
      t.boolean :sold
      t.boolean :flagged

      t.timestamps
    end
  end
end

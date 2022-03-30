class Products < ActiveRecord::Migration[7.0]
  create_table :products do |t|
    t.references :category
    t.string :product_name
    t.integer :price
    t.string :description
    t.string :image_url
    t.integer :stock

    t.timestamps
  end
end

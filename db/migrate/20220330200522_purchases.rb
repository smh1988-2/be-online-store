class Purchases < ActiveRecord::Migration[7.0]
  create_table :purchases do |t|
    t.references :user
    t.references :product
    t.integer :quantity
    t.integer :total_price

    t.timestamps
  end
end

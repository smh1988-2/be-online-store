class Categories < ActiveRecord::Migration[7.0]
  create_table :categories do |t|
    t.string :category_name

    t.timestamps
  end
end

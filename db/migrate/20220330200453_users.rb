class Users < ActiveRecord::Migration[7.0]
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :admin

      t.timestamps
    end
end

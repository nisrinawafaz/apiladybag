class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id:false do |t|
      t.primary_key :id
      t.string :username
      t.string :email
      t.string :password_digest
      t.text :address
      t.string :phone

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end

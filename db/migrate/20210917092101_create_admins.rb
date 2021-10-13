class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins, id:false do |t|
      t.primary_key :id
      t.string :name
      t.string :email
      t.timestamp :email_verified_at
      t.string :password
      t.string :remember_token

      t.timestamps
    end
    add_index :admins, :email, unique: true
  end
end

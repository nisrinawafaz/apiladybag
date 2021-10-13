class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.string :line_items

      t.timestamps
    end
  end
end

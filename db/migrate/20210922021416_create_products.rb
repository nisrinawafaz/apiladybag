class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products, id:false do |t|
      t.primary_key :id
      t.string :name
      t.string :slug
      t.references :category, foreign_key: true
      t.text :description
      t.string :model
      t.string :image
      t.integer :price_cents

      t.timestamps
    end
  end
end

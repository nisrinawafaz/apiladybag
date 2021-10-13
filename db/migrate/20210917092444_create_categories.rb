class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories, id:false do |t|
      t.primary_key :id
      t.string :name
      t.string :slug
      t.string :product

      t.timestamps
    end
  end
end

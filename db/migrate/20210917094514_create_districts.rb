class CreateDistricts < ActiveRecord::Migration[6.1]
  def change
    create_table :districts, id:false do |t|
      t.primary_key :id
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end

class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images, id:false do |t|
      t.primary_key :id
      t.string :warna
      t.string :uploadedFileUrl
      t.string :slug
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end

class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks, id:false do |t|
      t.primary_key :id
      t.string :name
      t.string :email
      t.string :title
      t.text :review

      t.timestamps
    end
  end
end

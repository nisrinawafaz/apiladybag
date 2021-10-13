class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses, id:false do |t|
      t.primary_key :id
      t.string :status

      t.timestamps
    end
  end
end

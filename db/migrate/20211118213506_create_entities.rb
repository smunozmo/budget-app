class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :user_id
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end

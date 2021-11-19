# frozen_string_literal: true

class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end

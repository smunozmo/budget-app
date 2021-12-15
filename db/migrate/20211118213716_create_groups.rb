# frozen_string_literal: true

class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon, default: 'https://lorempixel.com/100/100/abstract/'

      t.timestamps
    end
  end
end

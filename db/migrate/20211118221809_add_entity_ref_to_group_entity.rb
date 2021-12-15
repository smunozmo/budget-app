# frozen_string_literal: true

class AddEntityRefToGroupEntity < ActiveRecord::Migration[5.2]
  def change
    add_reference :group_entities, :entity, foreign_key: true
  end
end

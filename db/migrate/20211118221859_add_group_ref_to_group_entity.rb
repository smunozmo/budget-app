# frozen_string_literal: true

class AddGroupRefToGroupEntity < ActiveRecord::Migration[5.2]
  def change
    add_reference :group_entities, :group, foreign_key: true
  end
end

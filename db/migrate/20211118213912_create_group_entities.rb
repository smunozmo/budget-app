# frozen_string_literal: true

class CreateGroupEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :group_entities, &:timestamps
  end
end

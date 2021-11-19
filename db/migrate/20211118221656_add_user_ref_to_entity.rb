# frozen_string_literal: true

class AddUserRefToEntity < ActiveRecord::Migration[5.2]
  def change
    add_reference :entities, :user, foreign_key: true
  end
end

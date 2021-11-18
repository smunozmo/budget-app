class CreateGroupEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :group_entities do |t|

      t.timestamps
    end
  end
end

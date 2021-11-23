class Group < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :group_entities
  has_many :entities, :through => :group_entities, dependent: :destroy
end

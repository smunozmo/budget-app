class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
  has_many :entities, class_name: 'Entity', dependent: :destroy
  has_many :groups, class_name: 'Group', dependent: :destroy
end

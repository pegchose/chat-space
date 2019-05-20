class User < ApplicationRecord
  has_many :messages
  has_many :groups, through: :users_messages
  has_many :users_groups
end

class Group < ApplicationRecord
  has_many :users, through: :users_messages
  has_many :messages
end

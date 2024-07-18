class Table < ApplicationRecord
  has_many :table_users
  has_many :users, through: :table_users
  validates :users, length: { maximum: 4 }
end

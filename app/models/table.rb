class Table < ApplicationRecord
  belongs_to :tournament
  belongs_to :round
  has_many :table_users
  has_many :users, through: :table_users
end

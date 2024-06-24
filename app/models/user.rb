class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :table_users
  has_many :tables, through: :table_users
  has_many :rounds
  has_many :tournaments

  belongs_to :role
end

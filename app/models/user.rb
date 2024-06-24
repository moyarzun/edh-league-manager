class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :table_users
  has_many :tables, through: :table_users

  belongs_to :role

  before_save :assign_role

  DEFAULT_ROLE = 'player'.freeze

  def assign_role
    self.role = Role.find_by name: DEFAULT_ROLE if role.nil?
  end
end

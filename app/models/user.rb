class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :table_users
  has_many :tables, through: :table_users

  belongs_to :role

  after_initialize :set_default_role

  DEFAULT_ROLE = 'player'.freeze
  ADMIN_ROLE = 'admin'.freeze

  def set_default_role
    self.role ||= Role.find_by(name: DEFAULT_ROLE)
  end

  def is_admin?
    self.role_id == Role.find_by(name: ADMIN_ROLE).id
  end
end

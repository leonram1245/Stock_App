class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  rolify
  ROLES = %w[admin broker buyer].freeze

  validates :email, :password, :password_confirmation, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  has_many :transactions, dependent: :destroy
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  rolify
  
  ROLES = %w[broker buyer]

  def role_symbols
    [role.to_sym]
end

  validates :email, :password, :password_confirmation, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  has_many :deals, dependent: :destroy
  has_many :stocks, through: :deals
  has_many :buyers_stocks, through: :deals
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  rolify
  
  validates :email, :password, :password_confirmation, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  has_many :stocks, dependent: :destroy
  has_many :broker_stocks, through: :stocks
  has_many :buyers_stocks, through: :broker_stocks, foreign_key: :broker_stock_id
  has_many :buyers_transactions, through: :buyers_stocks, foreign_key: :buyers_stock_id
  has_many :broker_transactions, through: :broker_stocks, foreign_key: :broker_stock_id
end

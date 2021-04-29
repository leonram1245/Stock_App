class Stock < ApplicationRecord
  resourcify
  belongs_to :user
  has_many :broker_stocks, dependent: :destroy
  validates :price, :ticker, :company, presence: true
end
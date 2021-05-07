class BuyersStock < ApplicationRecord
  resourcify
  belongs_to :broker_stock
  has_many :transactions
  validates :price, :ticker, :company, :quantity, presence: true
end

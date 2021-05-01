class BuyersStock < ApplicationRecord
  resourcify
  belongs_to :broker_stock
  has_many :buyers_transactions
  validates :price, :ticker, :company, :quantity, :amount, presence: true
end

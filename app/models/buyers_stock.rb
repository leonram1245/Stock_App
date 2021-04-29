class BuyersStock < ApplicationRecord
  resourcify
  belongs_to :broker_stock
  validates :price, :ticker, :company, :quantity, :amount, presence: true
end

class BuyersStock < ApplicationRecord
  resourcify
  belongs_to :deal
  validates :price, :ticker, :company, :quantity, :amount, presence: true
end

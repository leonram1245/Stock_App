class Stock < ApplicationRecord
  resourcify
  belongs_to :deal
  validates :price, :ticker, :company, presence: true
end
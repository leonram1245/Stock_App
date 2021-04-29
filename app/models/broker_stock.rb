class BrokerStock < ApplicationRecord
    resourcify
    belongs_to :stock
    has_many :broker_transactions
    has_many :buyers_stocks
    validates :price, :ticker, :company, :quantity, :amount, presence: true
  end


class BrokerStock < ApplicationRecord
    resourcify
    belongs_to :user
    has_many :broker_transactions
    has_many :buyers_stocks
    validates :price, :ticker, :company, :quantity, presence: true
  end


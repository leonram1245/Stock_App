class BrokerStock < ApplicationRecord
    resourcify
    belongs_to :stock
    validates :price, :ticker, :company, :quantity, :amount, presence: true
  end
end

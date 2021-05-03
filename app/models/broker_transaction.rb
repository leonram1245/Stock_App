class BrokerTransaction < ApplicationRecord
    resourcify
    belongs_to :broker_stock
    validates :quantity, :price, :total, presence: true
end

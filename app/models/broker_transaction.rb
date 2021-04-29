class BrokerTransaction < ApplicationRecord
    resourcify
    belongs_to :broker_stock
    has_many :broker_transactions
end

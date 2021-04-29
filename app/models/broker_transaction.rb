class BrokerTransaction < ApplicationRecord
    resourcify
    belongs_to :broker_stock
end

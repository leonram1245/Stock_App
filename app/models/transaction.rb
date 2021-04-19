class Transaction < ApplicationRecord
    resourcify  
    belongs_to :role
    has_many :stocks
    has_many :buyersStocks
end


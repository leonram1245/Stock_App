class Stock < ApplicationRecord
    resourcify
    has_many :transactions
end

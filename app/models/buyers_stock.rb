class BuyersStock < ApplicationRecord
    resourcify
    belongs_to :transactions
end

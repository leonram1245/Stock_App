class BuyersStock < ApplicationRecord
    resourcify
    belongs_to :transaction
end

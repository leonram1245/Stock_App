class BuyersTransaction < ApplicationRecord
    resourcify
    belongs_to :buyers_stock
end

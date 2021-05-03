class BuyersTransaction < ApplicationRecord
    resourcify
    belongs_to :buyers_stock
    validates :quantity, :price, :total, presence: true
end

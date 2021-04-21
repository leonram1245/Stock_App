class BuyersStock < ApplicationRecord
  resourcify
  belongs_to :deal
end

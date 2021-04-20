class Stock < ApplicationRecord
  resourcify
  belongs_to :transactions
end
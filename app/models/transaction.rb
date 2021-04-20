class Transaction < ApplicationRecord
  resourcify  
  belongs_to :role
  has_many :stocks, dependent: :destroy
  has_many :buyersStocks, dependent: :destroy
end


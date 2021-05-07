class TransactionHistory < ApplicationRecord
  belongs_to :user
  validates :stock, :date, :price, :quantity, presence: true
end

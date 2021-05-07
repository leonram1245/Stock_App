class BrokerStock < ApplicationRecord 
    resourcify
    belongs_to :user
    validates :price, :ticker, :company, :quantity, presence: true
  end


  
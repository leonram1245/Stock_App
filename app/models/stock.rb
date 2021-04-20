class Stock < ApplicationRecord
    resourcify
    belongs_to :deal
end
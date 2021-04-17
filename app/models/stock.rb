class Stock < ApplicationRecord
    resourcify
    belongs_to :transaction
end

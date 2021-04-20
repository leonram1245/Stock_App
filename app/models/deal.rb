class Deal < ApplicationRecord
    resourcify
    has_many :stocks
    has_many :buyers_stocks
    belongs_to :user
end

class Transaction < ApplicationRecord
    resourcify  
    belongs_to: has_role :buyer
    belongs_to: has_role :broker
end

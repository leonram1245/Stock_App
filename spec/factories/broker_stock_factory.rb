FactoryBot.define do
  factory :broker_stock do
    ticker { "SYM" }
    company { "Mcdonald's Corp"}
    price { 236.08 }
    quantity { 10 }
  end
end

  
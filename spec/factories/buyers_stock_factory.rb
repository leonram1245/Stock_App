FactoryBot.define do
  factory :buyers_stock do
    ticker { "SYM" }
    company { "Mcdonald's Corp"}
    price { 236.08 }
    quantity { 10 }
    amount { price * quantity }
  end
end
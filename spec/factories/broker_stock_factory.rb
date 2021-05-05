FactoryBot.define do
  factory :broker_stock do
    ticker { "SYM" }
    company { "Mcdonald's Corp"}
    price { 236.08 }
    quantity { 10 }
    amount { price * quantity }
  end
end

# FactoryBot.define do
#     factory :post do
#         title { "This is a title" }
#         description { "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee." }

#         trait :with_a_longer_title do
#         title { "This is a lonnnnnggggggeeeeeerrrr title" }
#         end

#         factory :published_post do
#         published { true }
#         end

#         factory :unpublished_post do
#         published { false }
#         end
#     end
# end
  
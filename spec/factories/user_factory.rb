FactoryBot.define do
  factory :user do
    email { "sample@email.com" }
    password { "password" }
    password_confirmation { "password" }
    confirmed_at { Time.now }

  end
end
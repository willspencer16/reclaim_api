FactoryBot.define do
  factory :stamp do
    user_id { Faker::Number.number(digits: 10) }
    business_id { Faker::Number.number(digits: 10) }
    redeemed { false }
  end
end

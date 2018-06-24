FactoryBot.define do
  factory :article do
    title { Faker::Lorem.word }
    description { Faker::Number.paragraph }
  end
end
